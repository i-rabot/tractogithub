'''
Tratihubis converts Trac tickets to Github issues by using the following steps:

1. The user manually exports the Trac tickets to convert to a CSV file.
2. Tratihubis reads the CSV file and uses the data to create Github issues and milestones.


Installation
============

To install tratihubis, use ``pip`` or ``easy_install``::

  $ pip install tratihubis

If necessary, this also installs the `PyGithub <http://pypi.python.org/pypi/PyGithub/>`_ package.


Usage
=====

Information about Trac tickets to convert has to be provided in a CSV file. To obtain this CSV file, create a
new Trac queries using the SQL statement stored in
`query_tickets.sql <https://github.com/roskakori/tratihubis/blob/master/query_tickets.sql>`_  and
`query_comments.sql <https://github.com/roskakori/tratihubis/blob/master/query_comments.sql>`_.   Then
execute the queries and save the results by clicking "Download in other formats: Comma-delimited Text" and
choosing for example ``/Users/me/mytool/tickets.csv`` and ``/Users/me/mytool/comments.csv`` as output files.

Next create a config file to describe how to login to Github and what to convert. For example, you could
store the following in ``~/mytool/tratihubis.cfg``::

  [tratihubis]
  user = someone
  password = secret
  repo = mytool
  tickets = /Users/me/mytool/tickets.csv
  comments = /Users/me/mytool/comments.csv

(You may also remove password and instead set TRATIHUBIS_PASSWD environment variable)
Then run::

  $ tratihubis ~/mytool/tratihubis.cfg

This tests that the input data and Github information is valid and writes a log to the console describing
which operations would be performed.

To actually create the Github issues, you need to enable to command line option ``--really``::

  $ tratihubis --really ~/mytool/tratihubis.cfg

Be aware that Github issues and milestones cannot be deleted in case you mess up. Your only remedy is to
remove the whole repository and start anew. So make sure that tratihubis does what you want before you
enable ``--really``.

Mapping users
-------------

In case the Trac users have different user names on Github, you can specify a mapping. For example::

   users = johndoe: jdoe78, *: me

This would map the Trac user ``johndoe`` to the Github user ``jdoe78`` and everyone else to the user ``me``.
The default value is::

  users = *:*

This maps every Trac user to a Github user with the same name.

Mapping labels
--------------

Github labels somewhat mimic the functionality Trac stores in the ``type`` and ``resolution`` field of
tickets. By default, Github supports the following labels:

* bug
* duplicate
* enhancement
* invalid
* question
* wontfix

Trac on the other hand has a ``type`` field which by default can be:

* bug
* enhancement
* task

Furthermore closed Trac tickets have a ``resolution`` which, among others, can be:

* duplicate
* invalid
* wontfix

The ``labels`` config option allows to map Trac fields to Github labels. For example::

  labels = type=defect: bug, type=enhancement: enhancement, resolution=wontfix: wontfix

Here, ``labels`` is a comma separated list of mappings taking the form
``<trac-field>=<trac-value>:<github-label>``.

In case types or labels contain other characters than ASCII letters, digits and underscore (_), put them
between quotes::

  labels = type="software defect": bug


Attachments
-----------

You can find some notes on this in `issue #19 <https://github.com/roskakori/tratihubis/issues/19>`: Add
documentation for ``attachmentsprefix``.


Limitations
===========

The author of Github issues and comments always is the user specified in the config, even if a different
user opened the original Trac ticket or wrote the original Trac comment.

Github issues and comments have the current time as time stamp instead if time from Trac.

Github issue descriptions contains the raw Trac Wiki markup, there is no translation to Github markdown.

The due date of Trac milestones is not migrated to Github milestones, so when the conversion is done, you
have to set it manually.

Trac Milestone without any tickets are not converted to Github milestone.


Support
=======

In case of questions and problems, open an issue at <https://github.com/roskakori/tratihubis/issues>.

To obtain the source code or create your own fork to implement fixes or improvements, visit
<https://github.com/roskakori/tratihubis>.


License
=======

Copyright (c) 2012-2013, Thomas Aglassinger. All rights reserved. Distributed under the
`BSD License <http://www.opensource.org/licenses/bsd-license.php>`_.


Changes
=======

Version 0.5, 2013-02-13

(Contributed by Steven Di Rocco)

* Added support for file attachments.
* Added work around for information lost due GitHub API limitations:
  * Added trac commenter and date at the top of each comment.
  * Added automatic comment to each isseu showing original author, date authored, and last modification date.
* Fixed API calls to work with PyGithub 1.8.

Version 0.4, 2012-05-04

* Added config option ``labels`` to map Trac status and resolution to  Github labels.

Version 0.3, 2012-05-03

* Added config option ``comments`` to convert Trac ticket comments.
* Added closing of issue for which the corresponding Trac ticket has been closed already.
* Added validation of users issues are assigned to. They must have an active Github user.

Version 0.2, 2012-05-02

* Added config option ``users`` to map Trac users to Github users.
* Added binary in order to run ``tratihubis`` instead of ``python -m tratihubis``.
* Changed supposed issue number in log to take existing issues in account.

Version 0.1, 2012-05-01

* Initial release.
'''
# Copyright (c) 2012-2013, Thomas Aglassinger
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# * Neither the name of Thomas Aglassinger nor the names of its contributors
#   may be used to endorse or promote products derived from this software
#   without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
import codecs
import collections
import ConfigParser
import csv
import github
import logging
import optparse
import os.path
import StringIO
import sys
import token
import tokenize
import datetime
import time
import collections
import re

TIMESTAMP_FORMAT = "%b %-d, %Y, %-I:%M:%S %p"

LEGACY_HEADER_TEMPLATE = u"""_Imported from trac ticket {id}.
Created by **{reporter}**
Opened in trac: {createdtime}
Last modified in trac: {modifiedtime}{freshdesk}_"""

DUMMYTYPE = ' _dummy_ '

PLACEHOLDERTICKET = {
    'type': DUMMYTYPE,
    'owner': '',
    'reporter': '',
    'milestone': '',
    'status': 'closed',
    'resolution': '',
    'summary': 'placeholder',
    'description': '_trac conversion placeholder (no such trac ticket)_',
    'freshdesk': '',
    'keywords': '',
    'exists': False
}

LOG_FORMAT = "%(asctime)-15s %(levelname)-5.5s %(message)s"
logging.basicConfig(level=logging.INFO, format=LOG_FORMAT)
_log = logging.getLogger('tratihubis')

__version__ = "0.5"

ALLOWED_PER_MIN = 36
ALLOWED_PER_HR = 300
LIMIT_BUFFER = 10
_NOTSET = github.GithubObject.NotSet
_SECTION = 'tratihubis'
_OPTION_LABELS = 'labels'
_OPTION_USERS = 'users'
_OPTION_KEYWORDS = 'keywords'

_validatedGithubUsers = {}
_hub = None
_gitpath = None
_totalCreations = 0
_totalIssues = 0
_lastMinCalls = collections.deque()
_last40mCalls = collections.deque()


_FakeMilestone = collections.namedtuple('_FakeMilestone', ['number', 'title'])
_FakeIssue = collections.namedtuple('_FakeIssue', ['number', 'title', 'body', 'state', 'comments'])


class _ConfigError(Exception):
    def __init__(self, option, message):
        assert option is not None
        assert message is not None
        Exception.__init__(self, u'cannot process config option "%s" in section [%s]: %s'
                % (option, _SECTION, message))


class _CsvDataError(Exception):
    def __init__(self, csvPath, rowIndex, message):
        assert csvPath is not None
        assert rowIndex is not None
        assert rowIndex >= 0
        assert message is not None
        Exception.__init__(self, u'%s:%d: %s' % (os.path.basename(csvPath), rowIndex + 1, message))


class _UTF8Recoder:
    """
    Iterator that reads an encoded stream and reencodes the input to UTF-8
    """
    def __init__(self, f, encoding):
        self.reader = codecs.getreader(encoding)(f)

    def __iter__(self):
        return self

    def next(self):  # @ReservedAssignment
        result = self.reader.next().encode("utf-8")
        return result


class _UnicodeCsvReader:
    """
    A CSV reader which will iterate over lines in the CSV file "f",
    which is encoded in the given encoding.
    """
    def __init__(self, f, dialect=csv.excel, encoding="utf-8", **kwds):
        f = _UTF8Recoder(f, encoding)
        self.reader = csv.reader(f, dialect=dialect, **kwds)

    def next(self):  # @ReservedAssignment
        row = self.reader.next()
        return [unicode(s, "utf-8") for s in row]

    def __iter__(self):
        return self


class _LabelTransformations(object):
    def __init__(self, repo, definition, keywords):
        assert repo is not None
        self.repo = repo
        self._transformations = []
        self._labelMap = {}
        if definition or keywords:
            self._buildLabelMap()
            if definition:
                self._buildTransformations(definition)
            if keywords:
                self._keywordSetUp(keywords)

    def _buildLabelMap(self):
        _log.info(u'analyze existing labels')
        self._labelMap = {}
        _apiPauseIfNeeded()
        for label in self.repo.get_labels():
            _log.debug(u'  found label "%s"', label.name)
            self._labelMap[label.name] = label
        _log.info(u'  found %d labels', len(self._labelMap))

    def _buildTransformations(self, definition):
        assert definition is not None

        STATE_AT_TRAC_FIELD = 'f'
        STATE_AT_COMPARISON_OPERATOR = '='
        STATE_AT_TRAC_VALUE = 'v'
        STATE_AT_COLON = ':'
        STATE_AT_LABEL = 'l'
        STATE_AT_COMMA = ','

        self._transformations = []
        state = STATE_AT_TRAC_FIELD
        for tokenType, tokenText, _, _, _ in tokenize.generate_tokens(StringIO.StringIO(definition).readline):
            if tokenType == token.STRING:
                tokenText = tokenText[1:len(tokenText) - 1]
            if state == STATE_AT_TRAC_FIELD:
                tracField = tokenText
                tracValue = None
                labelValue = None
                state = STATE_AT_COMPARISON_OPERATOR
            elif state == STATE_AT_COMPARISON_OPERATOR:
                if tokenText != '=':
                    raise _ConfigError(_OPTION_LABELS,
                            u'Trac field "%s" must be followed by \'=\' instead of %r'
                            % (tracField, tokenText))
                state = STATE_AT_TRAC_VALUE
            elif state == STATE_AT_TRAC_VALUE:
                tracValue = tokenText
                state = STATE_AT_COLON
            elif state == STATE_AT_COLON:
                if tokenText != ':':
                    raise _ConfigError(_OPTION_LABELS,
                            u'value for comparison "%s" with Trac field "%s" must be followed by \':\' instead of %r'
                            % (tracValue, tracField, tokenText))
                state = STATE_AT_LABEL
            elif state == STATE_AT_LABEL:
                labelValue = tokenText
                if not labelValue in self._labelMap:
                    raise _ConfigError(_OPTION_LABELS,
                            u'unknown label "%s" must be replaced by one of: %s'
                            % (labelValue, sorted(self._labelMap.keys())))
                self._transformations.append((tracField, tracValue, labelValue))
                state = STATE_AT_COMMA
            elif state == STATE_AT_COMMA:
                if (tokenType != token.ENDMARKER) and (tokenText != ','):
                    raise _ConfigError(_OPTION_LABELS,
                            u'label transformation for Trac field "%s" must end with \',\' instead of %r'
                            % (tracField, tokenText))
                state = STATE_AT_TRAC_FIELD
            else:
                assert False, u'state=%r' % state

    def _keywordSetUp(self, keywords):
        assert keywords
        import string
        self._keywords = {}
        keywords = filter(None, map(string.strip, keywords.split(',')))
        for kw in keywords:
            if kw not in self._labelMap:
                raise _ConfigError(_OPTION_KEYWORDS,
                    'unknown keyword "%s" must be manually '
                    'added to repository as Label' % kw)
            self._keywords[re.compile(r"\b%s\b" % kw)] = self._labelMap[kw]

    def labelFor(self, tracField, tracValue):
        assert tracField
        assert tracValue is not None
        result = None
        transformationIndex = 0
        while (result is None) and (transformationIndex < len(self._transformations)):
            transformedField, transformedValueToCompareWith, transformedLabel = \
                    self._transformations[transformationIndex]
            if (transformedField == tracField) and (transformedValueToCompareWith == tracValue):
                assert transformedLabel in self._labelMap
                result = self._labelMap[transformedLabel]
            else:
                transformationIndex += 1
        return result

    def labelsForKeyWords(self, keywords):
        return [label.name for regex, label in 
            self._keywords.items() if 
            regex.search(keywords)]

def _getConfigOption(config, name, required=True, defaultValue=None):
    try:
        result = config.get(_SECTION, name)
    except ConfigParser.NoOptionError:
        if required:
            raise _ConfigError(name, 'config must contain a value for this option')
        result = defaultValue
    except ConfigParser.NoSectionError:
        raise _ConfigError(name, u'config must contain this section')
    return result


def _shortened(text):
    assert text is not None
    # verbose ?
    threshold = 100 if _log.level == logging.DEBUG else 30
    if len(text) > threshold:
        result = text[:threshold] + '...'
    else:
        result = text
    return result


def _timeFormatter(tractime):
    if tractime:
        dt = datetime.datetime.fromtimestamp(long(tractime))
        return dt.strftime(TIMESTAMP_FORMAT)
    return u''


def _convertWikiToMd(txt, currentticket):
    from trac.wiki.formatter import trac_to_github
    return trac_to_github(txt, _gitpath, currentticket)


def _tracTicketMaps(ticketsCsvPath, existingIssues):
    """
    Sequence of maps where each items describes the relevant 
    fields of each row from the tickets CSV exported
    from Trac.
    """
    EXPECTED_COLUMN_COUNT = 13
    _log.info(u'read ticket details from "%s"', ticketsCsvPath)
    lastHubIssue = len(existingIssues)
    with open(ticketsCsvPath, "rb") as ticketCsvFile:
        csvReader = _UnicodeCsvReader(ticketCsvFile)
        hasReadHeader = False
        for rowIndex, row in enumerate(csvReader):
            columnCount = len(row)
            if columnCount != EXPECTED_COLUMN_COUNT:
                raise _CsvDataError(ticketsCsvPath, rowIndex,
                        u'ticket row must have %d columns but has %d: %r' %
                        (EXPECTED_COLUMN_COUNT, columnCount, row))
            if hasReadHeader:
                ticketId = long(row[0])
                if ticketId < lastHubIssue:
                    continue
                currentHubIssues = len(existingIssues)
                if ticketId != lastHubIssue and \
                   ticketId <= currentHubIssues:
                    raise Exception("csv tickets out of order??: %d" % ticketId)
                for i in range(ticketId - currentHubIssues - 1):
                    # dummy ticket(s) needed to keep numbers in sync
                    dummy = PLACEHOLDERTICKET.copy()
                    dummy['id'] = currentHubIssues + i + 1
                    yield dummy
                ticketMap = {
                    'id': ticketId,
                    'type': row[1],
                    'owner': row[2] and row[2].strip(),
                    'reporter': row[3] and row[3].strip(),
                    'milestone': row[4] and row[4].strip(),
                    'status': row[5],
                    'resolution': row[6],
                    'summary': row[7],
                    'description': _convertWikiToMd(row[8], ticketId),
                    'createdtime': _timeFormatter(row[9]),
                    'modifiedtime': _timeFormatter(row[10]),
                    'freshdesk': u"\nFreshdesk: "
                        "[{0}](https://retailarchitects.freshdesk.com/helpdesk/tickets/{0})".format(row[11]) 
                            if row[11] else '',
                    'keywords': row[12],
                    'exists': False
                }
                if ticketId == lastHubIssue:
                    # We may not have finished all comments
                    ticketMap['exists'] = issue = existingIssues[ticketId]
                    if issue.title != ticketMap['summary']:
                        raise Exception("Last Git Hub Issue doesn't match [%s] != [%s]" %
                            (issue.title, ticketMap['summary']))
                yield ticketMap
            else:
                hasReadHeader = True


def _createMilestoneMap(repo):
    def addMilestones(targetMap, state):
        _apiPauseIfNeeded()
        for milestone in repo.get_milestones(state=state):
            _log.debug(u'  %d: %s', milestone.number, milestone.title)
            targetMap[milestone.title] = milestone
    result = {}
    _log.info(u'analyze existing milestones')
    addMilestones(result, 'open')
    addMilestones(result, 'closed')
    _log.info(u'  found %d milestones', len(result))
    return result


def _createIssueMap(repo):
    def addIssues(targetMap, state):
        _apiPauseIfNeeded()
        for issue in repo.get_issues(state=state):
            _log.debug(u'  %s: (%s) %s', issue.number, issue.state, issue.title)
            targetMap[issue.number] = issue
    result = {}
    _log.info(u'analyze existing issues')
    addIssues(result, 'open')
    addIssues(result, 'closed')
    _log.info(u'  found %d issues', len(result))
    return result


def _createTicketToCommentsMap(commentsCsvPath):
    EXPECTED_COLUMN_COUNT = 5
    result = {}
    if commentsCsvPath is not None:
        _log.info(u'read ticket comments from "%s"', commentsCsvPath)
        with open(commentsCsvPath, "rb") as commentsCsvFile:
            csvReader = _UnicodeCsvReader(commentsCsvFile)
            hasReadHeader = False
            for rowIndex, row in enumerate(csvReader):
                columnCount = len(row)
                if columnCount != EXPECTED_COLUMN_COUNT:
                    raise _CsvDataError(commentsCsvPath, rowIndex,
                            u'comment row must have %d columns but has %d: %r' %
                            (EXPECTED_COLUMN_COUNT, columnCount, row))
                if hasReadHeader:
                    commentMap = {
                        'id': long(row[0]),
                        'date': _timeFormatter(row[1]),
                        'author': row[2],
                        'type': row[3],
                        'body': row[4],
                        'padding': u' ',
                    }
                    if commentMap['type'] == 'comment':
                        commentMap['padding'] = u'\n\n'
                    elif commentMap['type'] == 'status':
                        commentMap['type'] = 'status change'
                        commentMap['body'] = u"**%s**" % commentMap['body']
                    result.setdefault(commentMap['id'], []).append(commentMap)
                    _log.debug(u"  imported comment {id}. {body:.30}".format(**commentMap))
                else:
                    hasReadHeader = True
    return result


def _createTicketsToAttachmentsMap(attachmentsCsvPath, attachmentsPrefix):
    EXPECTED_COLUMN_COUNT = 4
    result = {}
    if attachmentsCsvPath is not None and attachmentsPrefix is None:
        _log.error(u'attachments csv path specified but attachmentsprefix is not\n')
        return result
    if attachmentsCsvPath is not None:
        _log.info(u'read attachments from "%s"', attachmentsCsvPath)
    else:
        return result
    with open(attachmentsCsvPath, "rb") as attachmentsCsvFile:
        attachmentsReader = _UnicodeCsvReader(attachmentsCsvFile)
        hasReadHeader = False
        for rowIndex, row in enumerate(attachmentsReader):
            columnCount = len(row)
            if columnCount != EXPECTED_COLUMN_COUNT:
                raise _CsvDataError(attachmentsCsvPath, rowIndex,
                    u'attachment row must have %d columns but has %d: %r' %
                    (EXPECTED_COLUMN_COUNT, columnCount, row))
            if hasReadHeader:
                attachmentMap = {
                    'id': long(row[0]),
                    'author': row[3],
                    'filename': row[1],
                    'date': _timeFormatter(row[2]),
                    'fullpath': u'%s/%s/%s' % (attachmentsPrefix, row[0], row[1]),
                }
                result.setdefault(attachmentMap['id'], []).append(attachmentMap)
            else:
                hasReadHeader = True
    return result


def migrateTickets(repo, 
        ticketsCsvPath, 
        commentsCsvPath=None, 
        attachmentsCsvPath=None, 
        labelMapping=None, 
        userMapping="*:*", 
        attachmentsPrefix=None, 
        keywords=None,
        pretend=True):
    global _totalIssues
    assert _hub is not None
    assert repo is not None
    assert ticketsCsvPath is not None
    assert userMapping is not None
    
    tracTicketToCommentsMap = _createTicketToCommentsMap(commentsCsvPath)
    tracTicketToAttachmentsMap = \
        _createTicketsToAttachmentsMap(attachmentsCsvPath, attachmentsPrefix)
    existingIssues = _createIssueMap(repo)
    existingMilestones = _createMilestoneMap(repo)
    tracToGithubUserMap = _createTracToGithubUserMap(userMapping)
    labelTransformations = _LabelTransformations(repo, labelMapping, keywords)

    def possiblyAddLabel(labels, tracField, tracValue):
        label = labelTransformations.labelFor(tracField, tracValue)
        if label is not None:
            _log.info(u'  add label %s', label.name)
            labels.append(label.name)
    
    def labelsFromKeywords(labels, keywords):
        kwlabels = labelTransformations.labelsForKeyWords(keywords)
        for l in kwlabels:
            _log.info(u'  add label "%s" from keywords "%s"' % (l, keywords))
        labels.extend(kwlabels)

    fakeIssueId = 1 + len(existingIssues)
    for ticketMap in _tracTicketMaps(ticketsCsvPath, existingIssues):
        ticketId = ticketMap['id']
        title = ticketMap['summary']
        if ticketMap['exists']:
            # continuing on last ticket, may not have completed
            issue = ticketMap['exists']
            _log.info(u'***CONTINUING ticket #%d: %s', ticketId, _shortened(title))
        else:
            #
            # create issue
            #
            _log.info(u'convert ticket #%d: %s', ticketId, _shortened(title))
            body = ticketMap['description']
            tracOwner = ticketMap['owner']
            milestone = None
            milestoneNumber = 0
            milestoneTitle = ticketMap['milestone']
            labels = []
            if ticketMap['type'] == DUMMYTYPE:
                githubAssignee = _NOTSET
            else:
                if body and \
                   ticketMap['reporter'] and \
                   ticketMap['reporter'] != tracOwner:
                    body = u"_by %s:_\n%s" % (ticketMap['reporter'], body)
                githubAssignee = _githubUserFor(tracToGithubUserMap, tracOwner)
                if githubAssignee:
                    githubAssignee = _getGitHubUser(githubAssignee)
                else:
                    githubAssignee = _NOTSET
                if milestoneTitle:
                    if milestoneTitle not in existingMilestones:
                        if not pretend:
                            _apiPauseIfNeeded(True)
                            newMilestone = repo.create_milestone(milestoneTitle)
                            _apiCreationIncrement()
                        else:
                            newMilestone = \
                                _FakeMilestone(len(existingMilestones) + 1, 
                                    milestoneTitle)
                        _log.info(u'add milestone: %s', milestoneTitle)
                        existingMilestones[milestoneTitle] = newMilestone
                        _log.debug("%r" % existingMilestones)
                    milestone = existingMilestones[milestoneTitle]
                    milestoneNumber = milestone.number

                legacyInfo = LEGACY_HEADER_TEMPLATE.format(**ticketMap)
                attachmentInfo = u''
                attachmentsToAdd = tracTicketToAttachmentsMap.get(ticketId)
                if attachmentsToAdd:
                    for attachment in attachmentsToAdd:
                        attachmentInfo += u"* %s attached [%s](%s) on %s\n"  % (
                            attachment['author'], 
                            attachment['filename'], 
                            attachment['fullpath'].replace(' ','%20'), 
                            attachment['date'])
                        _log.info(u'  added attachment from %s', 
                            attachment['author'])
                # Add trac info, then body
                body = legacyInfo + "\n***\n" + body
                if attachmentInfo:
                    body += "\n***\n" + attachmentInfo

                possiblyAddLabel(labels, 'type', ticketMap['type'])
                possiblyAddLabel(labels, 'resolution', ticketMap['resolution'])
                labelsFromKeywords(labels, ticketMap['keywords'])

            if not pretend:
                if not milestone:
                    milestone = _NOTSET
                if not labels:
                    labels = _NOTSET
                _apiPauseIfNeeded(True)
                issue = repo.create_issue(
                    title, 
                    body, 
                    githubAssignee, 
                    milestone, 
                    labels)
                _apiCreationIncrement()
                _totalIssues += 1
            else:
                issue = _FakeIssue(fakeIssueId, title, body, 'open', 0)
                fakeIssueId += 1
            _log.info(u'  issue #%s: owner=%s-->%s; milestone=%s (%d)',
                    issue.number, 
                    tracOwner, 
                    githubAssignee.login if 
                        githubAssignee and 
                        githubAssignee is not _NOTSET 
                        else '',
                    milestoneTitle, 
                    milestoneNumber)
            if issue.number != ticketId:
                raise Exception("What happened? GitHub issue [%d] "
                    "didn't sync with trac ticket [%d]" % 
                    (issue.number, ticketId))
            existingIssues[ticketId] = issue
        #
        # add comments
        #
        commentsToAdd = tracTicketToCommentsMap.get(ticketId)
        if commentsToAdd is not None:
            # if continuing this issue from last run,
            # issue.comments probably won't be 0:
            for comment in commentsToAdd[issue.comments:]:
                if comment['type'] == 'comment':
                    comment['body'] = _convertWikiToMd(comment['body'], comment['id'])
                commentBody = u'_%strac %s on %s:_%s%s' % (
                    '**%s** ' % comment['author'] if comment['author'] else '',
                    comment['type'],
                    comment['date'],
                    comment['padding'],
                    comment['body'])
                if not pretend:
                    _addGitHubIssueComment(issue, commentBody)
                _log.info(u'  add comment by %s: %r', 
                    comment['author'], 
                    _shortened(commentBody))
        #
        # close ticket if needed
        #
        if ticketMap['status'] == 'closed' and \
           issue.state != 'closed':
            _log.info(u'  close issue')
            if not pretend:
                _apiPauseIfNeeded()
                issue.edit(state='closed')


def _addGitHubIssueComment(issue, commentBody):
    assert issue is not None
    _apiPauseIfNeeded(True)
    issue.create_comment(commentBody)
    _apiCreationIncrement()


def _parsedOptions(arguments):
    assert arguments is not None
    # Parse command line options.
    Usage = 'usage: %prog [options] CONFIGFILE\n\n  Convert Trac tickets to Github issues.'
    parser = optparse.OptionParser(
        usage=Usage,
        version="%prog " + __version__
    )
    parser.add_option("-R", "--really", action="store_true", dest="really",
                      help="really perform the conversion")
    parser.add_option("-v", "--verbose", action="store_true", dest="verbose",
                      help="log all actions performed in console")
    (options, others) = parser.parse_args(arguments)
    if len(others) == 0:
        parser.error(u"CONFIGFILE must be specified")
    elif len(others) > 1:
        parser.error(u"unknown options must be removed: %s" % others[1:])
    if options.verbose:
        _log.setLevel(logging.DEBUG)
    configPath = others[0]
    return options, configPath


def _validateGithubUser(tracUser, githubUser):
    assert tracUser is not None
    assert githubUser is not None
    try:
        _getGitHubUser(githubUser)
    except:
        # FIXME: After PyGithub API raises a predictable error, use  "except WahteverException".
        raise _ConfigError(_OPTION_USERS,
                u'Trac user "%s" must be mapped to an existing Github user instead of "%s"'
                % (tracUser, githubUser))


def _createTracToGithubUserMap(definition):
    result = {}
    for mapping in definition.split(','):
        words = [word.strip() for word in mapping.split(':')]
        if words:
            if len(words) != 2:
                raise _ConfigError(_OPTION_USERS,
                        u'mapping must use syntax "trac-user: github-user" but is: "%s"' % mapping)
            tracUser, githubUser = words
            if len(tracUser) == 0:
                raise _ConfigError(_OPTION_USERS, u'Trac user must not be empty: "%s"' % mapping)
            if len(githubUser) == 0:
                raise _ConfigError(_OPTION_USERS, u'Github user must not be empty: "%s"' % mapping)
            if tracUser == '""':
                tracUser = ''
            if githubUser == '""':
                githubUser = ''
            existingMappedGithubUser = result.get(tracUser)
            if existingMappedGithubUser is not None:
                raise _ConfigError(_OPTION_USERS,
                    u'Trac user "%s" must be mapped to only one Github user instead of "%s" and "%s"'
                     % (tracUser, existingMappedGithubUser, githubUser))
            result[tracUser] = githubUser
            if githubUser not in ('*', ''):
                _validateGithubUser(tracUser, githubUser)
    return result


def _githubUserFor(tracToGithubUserMap, tracUser, validate=True):
    assert tracToGithubUserMap is not None
    if not tracUser:
        return u''
    result = tracToGithubUserMap.get(tracUser)
    if result is None:
        result = tracToGithubUserMap.get('*')
        if result is None:
            raise _ConfigError(_OPTION_USERS, u'Trac user "%s" must be mapped to a Github user' % tracUser)
    if result == '*':
        result = tracUser
    if validate and result:
        _validateGithubUser(tracUser, result)
    return result


def _getGitHubUser(username):
    assert _hub is not None
    if username not in _validatedGithubUsers:
        _log.debug(u'  check for Github user "%s"', username)
        _apiPauseIfNeeded()
        userObject = _hub.get_user(username)
        _validatedGithubUsers[username] = userObject
        return userObject
    return _validatedGithubUsers[username]


def _apiPauseIfNeeded(iscreation=False):
    """
    GitHub only allows so many requests per period...
    """
    if iscreation:
        _apiCreationRequestPause(_lastMinCalls, ALLOWED_PER_MIN, 62, 'min')
        _apiCreationRequestPause(_last40mCalls, ALLOWED_PER_HR, 3660, 'hour')
    _apiTotalRequestPause()


def _apiCreationRequestPause(calls, allowed, periodSeconds, periodName):
    # only allowed creation requests per period
    def calcCount():
        pastPeriod = datetime.datetime.now() \
            - datetime.timedelta(seconds=periodSeconds)
        while calls and calls[0][1] < pastPeriod:
            calls.popleft()
        return sum(c[0] for c in calls)
    callcnt = calcCount()
    _log.info(u"\t\t\t%d creations in last %s" % (callcnt, periodName))
    while callcnt >= allowed:
        since = (datetime.datetime.now() - calls[0][1]).seconds
        sec = max(3, periodSeconds - since)
        _log.info(u"BREATHER: GitHub gets mad if over %d creation "
            "calls per %s.  We've made %d.  Sleep for %d sec%s" % (
                allowed, 
                periodName, 
                callcnt, 
                sec, 
                ' (until %s)' % (datetime.datetime.now() + 
                    datetime.timedelta(seconds=sec)) if sec > 65 else ''))
        time.sleep(sec)
        callcnt = calcCount()
        

def _apiTotalRequestPause():
    # Also only allow so many total requests per hour
    #_log.debug("\t\t\t%d api requests remaining" % _hub.rate_limiting[0])
    while _hub.rate_limiting[0] < LIMIT_BUFFER:
        seconds = max(15, _hub.rate_limiting_resettime - time.time())
        _log.info(u"GitHub rate limited: only %d of %d left, "
            "sleep for %.2f seconds (until %s)" % (
                _hub.rate_limiting + (
                seconds,
                datetime.datetime.now()
                    + datetime.timedelta(seconds=seconds))))
        time.sleep(seconds)
        _hub.get_rate_limit()


def _apiCreationIncrement(cnt=1):
    global _totalCreations
    # avoid user.creation_rate_limit_exceeded
    # Limits and what counts as such an event are not
    # documented.. trial and error
    call = (cnt, datetime.datetime.now())
    _lastMinCalls.append(call)
    _last40mCalls.append(call)
    _totalCreations += 1


def main(argv=None):
    if argv is None:
        argv = sys.argv
    global _hub
    global _gitpath
    exitCode = 1
    try:
        options, configPath = _parsedOptions(argv[1:])
        config = ConfigParser.SafeConfigParser()
        config.read(configPath)
        commentsCsvPath = _getConfigOption(config, 'comments', False)
        _gitpath = _getConfigOption(config, 'gitpath', False)
        attachmentsCsvPath = _getConfigOption(config, 'attachments', False)
        attachmentsPrefix = _getConfigOption(config, 'attachmentsprefix', False)
        labelMapping = _getConfigOption(config, _OPTION_LABELS, False)
        keywords = _getConfigOption(config, _OPTION_KEYWORDS, False)
        try:
            password = config.get(_SECTION, 'password')
        except ConfigParser.NoOptionError:
            password = os.getenv('TRATIHUBIS_PASSWD')
        if not password:
            raise _ConfigError('password', 
                "config must contain a value for this option "
                "(or set the TRATIHUBIS_PASSWD environment variable)")
        repoName = _getConfigOption(config, 'repo')
        ticketsCsvPath = _getConfigOption(config, 'tickets', False, 'tickets.csv')
        user = _getConfigOption(config, 'user')
        userMapping = _getConfigOption(config, _OPTION_USERS, False, '*:*')
        if not options.really:
            _log.warning(u'no actions are performed unless command line option --really is specified')
        _log.info(u'log on to github as user "%s"', user)
        _hub = github.Github(user, password)
        _log.info(u'connect to github repo "%s"', repoName)
        if '/' in repoName:
            owner, repoName = repoName.split('/',1)
            owner = _getGitHubUser(owner)
        else:
            owner = _hub.get_user()
        _apiPauseIfNeeded()
        repo = owner.get_repo(repoName)
        _log.info(u'connected to %r', repo)
        migrateTickets(repo, 
            ticketsCsvPath, 
            commentsCsvPath, 
            attachmentsCsvPath, 
            userMapping=userMapping,
            labelMapping=labelMapping, 
            attachmentsPrefix=attachmentsPrefix, 
            keywords=keywords,
            pretend=not options.really)
        exitCode = 0
    except (EnvironmentError, OSError, _ConfigError, _CsvDataError), error:
        _log.error(error)
    except KeyboardInterrupt:
        _log.warning(u"interrupted by user")
    except Exception, error:
        _log.exception(error)
    finally:
        _log.info("total issues created: %d" % _totalIssues)
        _log.info("total content creations: %d" % _totalCreations)
    return exitCode


def _mainEntryPoint():
    logging.basicConfig(level=logging.INFO)
    sys.exit(main())


if __name__ == "__main__":
    _mainEntryPoint()
