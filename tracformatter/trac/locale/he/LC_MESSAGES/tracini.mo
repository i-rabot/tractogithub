Þ    ª      l              ¼
    ½
  ¾   Ò  ¾     Ú   P  %   +  C   Q  z     >     y  O  7   É  &    â   (  !     ¹   -  Ø   ç  Û   À  \     Ø   ù  ]   Ò  m   0  |     g          y     ª     7   +  q  c     Õ!  \   î!  +   K"  ,   w"  .   ¤"  A   Ó"  +   #  ,   A#  K   n#  (   º#  +   ã#  é   $  D   ù$  +   >%  2   j%  7   %  M   Õ%  *   #&  4   N&  	   &  ?   &  B   Í&  .   '  a   ?'  l   ¡'     (     ¦(  k   Á(  M   -)  R   {)    Î)  Æ  á*  *   ¨,     Ó,      d-  l   .  %  r.  \   /  4  õ/     *1  Ê   ¿1    2  v  4    5  4  -7    b8    r:  ,   v;  0   £;  1   Ô;  Z   <  J   a<    ¬<  F   6>     }>  ;   ?  3   U?  X   ?  v   â?  ¬   Y@  @   A    GA  m   dB     ÒB     pC  î   D     ûD  «   E     ¼E  I   [F  S   ¥F  S   ùF  ¹  MG  É  I  g   ÑJ  f   9K  B    K  P   ãK  !   4L  )   VL     L  #  M  Æ   :N  Å   O      ÇO  +   èO    P  o   Q  b   Q  ±   ïQ     ¡R  ÷   6S  /   .T  ¨   ^T  ê   U  4   òU  /   'V  7   WV  -   V  *   ½V  !   èV  D   
W  c   OW  H   ³W     üW  õ  ýX  ×   óZ  k  Ë[  À   7b  |   øb  ä   uc  è   Zd  :   Ce     ~e    e  q   ¯f  þ   !g  T    h    uh  6  i    ¾n  f   Cs     ªs  ³  Ês  |   ~u  %   ûu  =   !v  L   _v  )   ¬v  ç   Öv  q  ¾w  È   0y  F   ùy  j  @z  X   «{     |  ÷   |  Ë   }  Ç   a~  1  )  )   [           ?  &  ë   f  ë   R    >  J   @  E        Ñ  X   d  y  ½  D   7  ¸  |  #  5  /   Y  Ó       ]    l       (       4     À  ¶   T  ¡     À   ­  ·   n  ý   &  Y   $  q  ~  )   ð  {     _     N   ö  [   E  i   ¡  Y      S   e   o   ¹   P   )¡  R   z¡  E  Í¡  Y   £  P   m£  d   ¾£  ]   #¤  c   ¤  N   å¤  X   4¥  	   ¥  Q   ¥  Z   é¥  7   D¦     |¦     §  Ò   §  2   o¨     ¢¨  h   0©  Y   ©    ó©    «  O   ­  ±   à­  Á   ®     T¯  Ê  Ú¯  {   ¥±    !²  Ï   ¹³  +  ´    µµ  v  H·    ¿¸  w  Xº  è  Ð»  X  ¹¾  B   À  I   UÀ  J   À     êÀ  h   pÁ    ÙÁ  b   íÃ  ü   PÄ  N   MÅ  R   Å  |   ïÅ  ¬   lÆ  Ù   Ç  a   óÇ  K  UÈ  y   ¡É  ´   Ê  ¶   ÐÊ    Ë     Ì  Ù   ªÌ  ì   Í  T   qÎ  z   ÆÎ  w   AÏ    ¹Ï  É  ½Ñ  q   Ó  q   ùÓ  ^   kÔ     ÊÔ  9   NÕ  *   Õ  Æ   ³Õ  k  zÖ  	  æ×    ðØ  -   Ú  6   5Ú  !  lÚ     Û      Ü  è   §Ü  ë   Ý  7  |Þ  I   ´ß  ê   þß    éà  ?   öá  ?   6â  A   vâ  A   ¸â  ;   úâ  &   6ã  g   ]ã     Åã  [   Nä  K  ªä  õ  öå  #  ìç  k  é  ü   |ï  ¯   yð  '  )ñ  #  Qò  W   uó  5   Íó  §  ô  ¡   «õ  &  Mö  h   t÷  \  Ý÷  ¸  :ù    óÿ     x .    5  D    z C   	 ]   M o   « /   	 O  K	 q  
 $   j   2 ¼   k   Z Ý   Æ   ¤   9 ñ   F ¢  8 O   Û    +  (r,g,b) color triple to use for the color corresponding
to the intermediate color, if two linear interpolations are used
for the color scale (see `intermediate_point`).
If not set, the intermediate color between `oldest_color` and
`newest_color` will be used.
(''since 0.11'') (r,g,b) color triple to use for the color corresponding
to the newest color, for the color scale used in ''blame'' or
the browser ''age'' column if `color_scale` is enabled.
(''since 0.11'') (r,g,b) color triple to use for the color corresponding
to the oldest color, for the color scale used in ''blame'' or
the browser ''age'' column if `color_scale` is enabled.
(''since 0.11'') A Genshi text template snippet used to get the notification subject.

By default, the subject template is `$prefix #$ticket.id: $summary`.
`$prefix` being the value of the `smtp_subject_prefix` option.
''(since 0.11)'' Alternative text for the header logo. Always send notifications to any address in the ''reporter''
field. Always send notifications to the person who causes the ticket 
property change and to any previous updater of that ticket. Always send notifications to the ticket owner (''since 0.9''). As the workflow for tickets is now configurable, there can be many
ticket states, and simply displaying closed tickets vs. all the others
is maybe not appropriate in all cases. This section enables one to
easily create ''groups'' of states that will be shown in different
colors in the milestone progress bar.

Example configuration (the default only has closed and active):
{{{
closed = closed
# sequence number in the progress bar
closed.order = 0
# optional extra param for the query (two additional columns: created and modified and sort on created)
closed.query_args = group=resolution,order=time,col=id,col=summary,col=owner,col=type,col=priority,col=component,col=severity,col=time,col=changetime
# indicates groups that count for overall completion percentage
closed.overall_completion = true

new = new
new.order = 1
new.css_class = new
new.label = new

# one catch-all group is allowed
active = *
active.order = 2
# CSS class for this interval
active.css_class = open
# Displayed label for this group
active.label = in progress
}}}

The definition consists in a comma-separated list of accepted status.
Also, '*' means any status and could be used to associate all remaining
states to one catch-all group.

The CSS class can be one of: new (yellow), open (no color) or closed
(green). New styles can easily be added using the following selector:
`table.progress td.<class>`

(''since 0.11'') Automatically reload template files after modification. Base URL for serving the core static resources below 
`/chrome/common/`.

It can be left empty, and Trac will simply serve those resources
itself.

Advanced users can use this together with
[TracAdmin trac-admin ... deploy <deploydir>] to allow serving the
static resources for Trac directly from the web server.
Note however that this only applies to the `<deploydir>/htdocs/common`
directory, the other deployed resources (i.e. those from plugins) 
will not be made available this way and additional rewrite 
rules will be needed in the web server. Base URL of a Trac instance where errors in this Trac
should be reported.

This can be an absolute or relative URL, or '.' to reference
this Trac instance. An empty value will disable the reporting
buttons.  (''since 0.11.3'') Charset to be used when in doubt. Check that the committer has permission to perform the requested
operations on the referenced tickets.

This requires that the user names be the same for Trac and repository
operations. Comma separated list of paths categorized as branches.
If a path ends with '*', then all the directory entries found below 
that path will be included. 
Example: `/trunk, /branches/*, /projectAlpha/trunk, /sandbox/*` Comma separated list of paths categorized as tags.

If a path ends with '*', then all the directory entries found below
that path will be included.
Example: `/tags/*, /projectAlpha/tags/A-1.0, /projectAlpha/tags/A-v1.1` Comma-separated list of MIME types that should be treated as
binary data. (''since 0.11.5'') Comma-separated list of allowed prefixes for repository
directories when adding and editing repositories in the repository
admin panel. If the list is empty, all repository directories are
allowed. (''since 0.12.1'') Comma-separated list of colors to use for the TracRevisionLog
graph display. (''since 0.13'') Comma-separated list of domains that should be considered as
valid for email addresses (such as localdomain). Comma-separated list of domains that should not be considered
part of email addresses (for usernames with Kerberos domains). Comma-separated list of version control properties to hide from
the repository browser.
(''since 0.9'') Comma-separated list of version control properties to render
as oneliner wiki content in the repository browser.

(''since 0.11'') Comma-separated list of version control properties to render
as wiki content in the repository browser.

(''since 0.11'') Commands that add a reference, as a space-separated list.

If set to the special value <ALL>, all tickets referenced by the
message will get a reference to the changeset. Commands that close tickets, as a space-separated list. Custom logging format.

If nothing is set, the following will be used:

Trac[$(module)s] $(levelname)s: $(message)s

In addition to regular key names supported by the Python
logger library (see
http://docs.python.org/library/logging.html), one could use:

- $(path)s     the path for the current environment
- $(basename)s the last path component of the current environment
- $(project)s  the project name

Note the usage of `$(...)s` instead of `%(...)s` as the latter form
would be interpreted by the ConfigParser itself.

Example:
`($(thread)d) Trac[$(basename)s:$(module)s] $(levelname)s: $(message)s`

''(since 0.10.5)'' Database backup location Database connection
[wiki:TracEnvironment#DatabaseConnectionStrings string] for this
project Default cc: list for newly created tickets. Default component for newly created tickets. Default description for newly created tickets. Default host/domain to append to address that do not specify
one. Default keywords for newly created tickets. Default milestone for newly created tickets. Default number of days displayed in the Timeline, in days.
(''since 0.9.'') Default owner for newly created tickets. Default priority for newly created tickets. Default repository connector type. (''since 0.10'')

This is also used as the default repository type for repositories
defined in [[TracIni#repositories-section repositories]] or using the
"Repositories" admin panel. (''since 0.12'') Default resolution for resolving (closing) tickets
(''since 0.11''). Default severity for newly created tickets. Default summary (title) for newly created tickets. Default type for newly created tickets (''since 0.9''). Default value for the limit argument in the TracRevisionLog.
(''since 0.11'') Default version for newly created tickets. Displayed tab width in file preview. (''since 0.9'') Doc for c Don't accept tickets with a too big comment.
(''since 0.11.2'') Don't accept tickets with a too big description.
(''since 0.11''). E-Mail address of the project's administrator. Email address(es) to always send notifications to,
addresses can be seen by all recipients (Cc:). Email address(es) to always send notifications to,
addresses do not appear publicly (Bcc:). (''since 0.10'') Enable colorization of the ''age'' column.

This uses the same color scale as the source code annotation:
blue is older, red is newer.
(''since 0.11'') Enable email notification. Enable the display of all ticket changes in the timeline, not only
open / close operations (''since 0.9''). Enable/disable highlighting CamelCase links to missing pages
(''since 0.9''). Enable/disable splitting the WikiPageNames with space characters
(''since 0.10''). Enable/disable the use of unsafe HTML tags such as `<script>` or
`<embed>` with the HTML [wiki:WikiProcessors WikiProcessor]
(''since 0.10.4'').

For public sites where anonymous users can edit the wiki it is
recommended to leave this option disabled (which is the default). Every option in the `[interwiki]` section defines one InterWiki
prefix. The option name defines the prefix. The option value defines
the URL, optionally followed by a description separated from the URL
by whitespace. Parametric URLs are supported as well.

'''Example:'''
{{{
[interwiki]
MeatBall = http://www.usemod.com/cgi-bin/mb.pl?
PEP = http://www.python.org/peps/pep-$1.html Python Enhancement Proposal $1
tsvn = tsvn: Interact with TortoiseSvn
}}} Height of the header logo image in pixels. If `log_type` is `file`, this should be a path to the
log-file.  Relative paths are resolved relative to the `log`
directory of the environment. If set to a value between 0 and 1 (exclusive), this will be the
point chosen to set the `intermediate_color` for interpolating
the color value.
(''since 0.11'') In this section, you can define additional fields for tickets. See
TracTicketsCustomFields for more details. Inactivity timeout in seconds after which the automatic wiki preview
triggers an update. This option can contain floating-point values. The
lower the setting, the more requests will be made to the server. Set
this to 0 to disable automatic preview. The default is 2.0 seconds.
(''since 0.12'') Level of verbosity in log.

Should be one of (`CRITICAL`, `ERROR`, `WARN`, `INFO`, `DEBUG`). Lifetime of the authentication cookie, in seconds.

This value determines how long the browser will cache authentication
information, and therefore, after how much inactivity a user will have
to log in again. The default value of 0 makes the cookie expire at the
end of the browsing session. (''since 0.12'') List of URI schemes considered "safe", that will be rendered as
external links even if `[wiki] render_unsafe_content` is `false`.
(''since 0.11.8'') List of additional MIME types and keyword mappings.
Mappings are comma-separated, and for each MIME type,
there's a colon (":") separated list of associated keywords
or file extensions. (''since 0.10'') List of additional MIME types known by Enscript.
For each, a tuple `mimetype:mode:quality` has to be
specified, where `mimetype` is the MIME type,
`mode` is the corresponding Enscript mode to be used
for the conversion and `quality` is the quality ratio
associated to this conversion.
That can also be used to override the default
quality ratio used by the Enscript render, which is 2
(''since 0.10''). List of additional MIME types known by Pygments.

For each, a tuple `mimetype:mode:quality` has to be
specified, where `mimetype` is the MIME type,
`mode` is the corresponding Pygments mode to be used
for the conversion and `quality` is the quality ratio
associated to this conversion. That can also be used
to override the default quality ratio used by the
Pygments render. List of additional MIME types known by SilverCity.
For each, a tuple `mimetype:mode:quality` has to be
specified, where `mimetype` is the MIME type,
`mode` is the corresponding SilverCity mode to be used
for the conversion and `quality` is the quality ratio
associated to this conversion.
That can also be used to override the default
quality ratio used by the SilverCity render, which is 3
(''since 0.10''). List of components implementing `IPermissionPolicy`, in the order in
which they will be applied. These components manage fine-grained access
control to Trac resources.
Defaults to the DefaultPermissionPolicy (pre-0.11 behavior) and
LegacyAttachmentPolicy (map ATTACHMENT_* permissions to realm specific
ones) List of repositories that should be synchronized on every page
request.

Leave this option empty if you have set up post-commit hooks calling
`trac-admin $ENV changeset added` on all your repositories
(recommended). Otherwise, set it to a comma-separated list of
repository names. Note that this will negatively affect performance,
and will prevent changeset listeners from receiving events from the
repositories specified here. The default is to synchronize the default
repository, for backward compatibility. (''since 0.12'') List of repository paths that can be downloaded.

Leave the option empty if you want to disable all downloads, otherwise
set it to a comma-separated list of authorized paths (those paths are
glob patterns, i.e. "*" can be used as a wild card)
(''since 0.10'') Location of authz policy configuration file. Location of mysqldump for MySQL database backups Location of pg_dump for Postgres database backups Logging facility to use.

Should be one of (`none`, `file`, `stderr`, `syslog`, `winlog`). Make `<textarea>` fields resizable. Requires !JavaScript.
(''since 0.12'') Make the owner field of tickets use a drop-down menu.
Be sure to understand the performance implications before activating
this option. See
[TracTickets#Assign-toasDrop-DownList Assign-to as Drop-Down List].

Please note that e-mail addresses are '''not''' obfuscated in the
resulting drop-down menu, so this option should not be used if
e-mail addresses must remain protected.
(''since 0.9'') Maximum allowed file size (in bytes) for ticket and wiki 
attachments. Maximum allowed total size (in bytes) for an attachment list to be
downloadable as a `.zip`. Set this to -1 to disable download as `.zip`.
(''since 0.13'') Maximum allowed wiki page size in bytes. (''since 0.11.2'') Maximum file size for HTML preview. (''since 0.9'') Maximum number of days (-1 for unlimited) displayable in the 
Timeline. (''since 0.11'') Maximum number of modified files for which the changeset view will
attempt to show the diffs inlined (''since 0.10''). Maximum total size in bytes of the modified files (their old size
plus their new size) for which the changeset view will attempt to show
the diffs inlined (''since 0.10''). Minimum length of query string allowed when performing a search. Name of the component implementing `IEmailSender`.

This component is used by the notification system to send emails.
Trac currently provides `SmtpEmailSender` for connecting to an SMTP
server, and `SendmailEmailSender` for running a `sendmail`-compatible
executable. (''since 0.12'') Name of the component implementing `IPermissionStore`, which is used
for managing user and group permissions. Name of the component implementing `ITicketGroupStatsProvider`, 
which is used to collect statistics on groups of tickets for display
in the milestone views. Name of the component implementing `ITicketGroupStatsProvider`, 
which is used to collect statistics on groups of tickets for display
in the roadmap views. Name of the component that handles requests to the base URL.

Options include `TimelineModule`, `RoadmapModule`, `BrowserModule`,
`QueryModule`, `ReportModule`, `TicketModule` and `WikiModule`. The
default is `WikiModule`. (''since 0.9'') Name of the project. Never obfuscate `mailto:` links explicitly written in the wiki, 
even if `show_email_addresses` is false or the user has not the 
EMAIL_VIEW permission (''since 0.11.6''). Number of files to show (`-1` for unlimited, `0` to disable).

This can also be `location`, for showing the common prefix for the
changed files. (since 0.11). Number of tickets displayed in the rss feeds for reports
(''since 0.11'') Number of tickets displayed per page in ticket queries,
by default (''since 0.11'') Number of tickets displayed per page in ticket reports,
by default (''since 0.11'') One of the alternatives for registering new repositories is to
populate the `[repositories]` section of the `trac.ini`.

This is especially suited for setting up convenience aliases,
short-lived repositories, or during the initial phases of an
installation.

See [TracRepositoryAdmin#Intrac.ini TracRepositoryAdmin] for details
about the format adopted for this section and the rest of that page for
the other alternatives.

(''since 0.12'') Optionally use `[trac] base_url` for redirects.

In some configurations, usually involving running Trac behind
a HTTP proxy, Trac can't automatically reconstruct the URL
that is used to access it. You may need to use this option to
force Trac to use the `base_url` setting also for
redirects. This introduces the obvious limitation that this
environment will only be usable when accessible from that URL,
as redirects are frequently used. ''(since 0.10.5)'' Order of the items to display in the `mainnav` navigation bar, 
listed by IDs. See also TracNavigation. Order of the items to display in the `metanav` navigation bar,
listed by IDs. See also TracNavigation. Ordered list of filters to apply to all requests
(''since 0.10''). Ordered list of workflow controllers to use for ticket actions
(''since 0.11''). Page footer text (right-aligned). Password for SMTP server. (''since 0.9'') Path for the authentication cookie. Set this to the common base path
of several Trac instances if you want them to share the cookie.
(''since 0.12'') Path to the //shared htdocs directory//.

Static resources in that directory are mapped to /chrome/shared
under the environment URL, in addition to common and site locations.

This can be useful in site.html for common interface customization
of multiple Trac environments.

(''since 0.13'') Path to the //shared plugins directory//.

Plugins in that directory are loaded in addition to those in
the directory of the environment `plugins`, with this one
taking precedence.

(''since 0.11'') Path to the //shared templates directory//.

Templates in that directory are loaded in addition to those in the
environments `templates` directory, but the latter take precedence.

(''since 0.11'') Path to the Enscript executable. Path to the PHP executable (''since 0.9''). Path to the default repository. This can also be a relative path
(''since 0.11'').

This option is deprecated, and repositories should be defined in the
[TracIni#repositories-section repositories] section, or using the
"Repositories" admin panel. (''since 0.12'') Path to the sendmail executable.

The sendmail program must accept the `-i` and `-f` options.
 (''since 0.12'') Paths to sqlite extensions, relative to Trac environment's
directory or absolute. (''since 0.12'') Permit email address without a host/domain (i.e. username only).

The SMTP server should accept those addresses, and either append
a FQDN or use local delivery. (''since 0.10'') Recipients can see email addresses of other CC'ed recipients.

If this option is disabled (the default), recipients are put on BCC.
(''since 0.10'') Reference URL for the Trac deployment.

This is the base URL that will be used when producing
documents that will be used outside of the web browsing
context, like for example when inserting URLs pointing to Trac
resources in notification e-mails. Reply-To address to use in notification emails. Require commands to be enclosed in an envelope.

Must be empty or contain two characters. For example, if set to "[]",
then commands must be in the form of [closes #4]. Restrict cookies to HTTPS connections.

When true, set the `secure` flag on all cookies so that they
are only sent to the server on HTTPS connections. Use this if
your Trac instance is only accessible through HTTPS. (''since
0.11.2'') SMTP server hostname to use for email notifications. SMTP server port to use for email notification. Send ticket change notification when updating a ticket. Sender address to use in notification emails. Sender name to use in notification emails. Short description of the project. Show IP addresses for resource edits (e.g. wiki).
(''since 0.11.3'') Show email addresses instead of usernames. If false, we obfuscate
email addresses. (''since 0.11'') Show the SQL queries in the Trac log, at DEBUG level.
''(Since 0.11.5)'' Specifies the MIME encoding scheme for emails.

Valid options are 'base64' for Base64 encoding, 'qp' for
Quoted-Printable, and 'none' for no encoding, in which case mails will
be sent as 7bit if the content is all ASCII, or 8bit otherwise.
(''since 0.10'') Specifies which search filters should be disabled by
default on the search page. This will also restrict the
filters for the quick search function. The filter names
defined by default components are: `wiki`, `ticket`,
`milestone` and `changeset`.  For plugins, look for
their implementation of the ISearchSource interface, in
the `get_search_filters()` method, the first member of
returned tuple. Once disabled, search filters can still
be manually enabled by the user on the search page.
(since 0.12) Text to prepend to subject line of notification emails. 

If the setting is not defined, then the [$project_name] prefix.
If no prefix is desired, then specifying an empty option 
will disable it. (''since 0.10.1'') The TracBrowser for Subversion can interpret the `svn:externals`
property of folders. By default, it only turns the URLs into links as
Trac can't browse remote repositories.

However, if you have another Trac instance (or an other repository
browser like [http://www.viewvc.org/ ViewVC]) configured to browse the
target repository, then you can instruct Trac which other repository
browser to use for which external URL. This mapping is done in the
`[svn:externals]` section of the TracIni.

Example:
{{{
[svn:externals]
1 = svn://server/repos1                       http://trac/proj1/browser/$path?rev=$rev
2 = svn://server/repos2                       http://trac/proj2/browser/$path?rev=$rev
3 = http://theirserver.org/svn/eng-soft       http://ourserver/viewvc/svn/$path/?pathrev=25914
4 = svn://anotherserver.com/tools_repository  http://ourserver/tracs/tools/browser/$path?rev=$rev
}}}
With the above, the
`svn://anotherserver.com/tools_repository/tags/1.1/tools` external will
be mapped to `http://ourserver/tracs/tools/browser/tags/1.1/tools?rev=`
(and `rev` will be set to the appropriate revision number if the
external additionally specifies a revision, see the
[http://svnbook.red-bean.com/en/1.4/svn.advanced.externals.html SVN Book on externals]
for more details).

Note that the number used as a key in the above section is purely used
as a place holder, as the URLs themselves can't be used as a key due to
various limitations in the configuration file parser.

Finally, the relative URLs introduced in
[http://subversion.apache.org/docs/release-notes/1.5.html#externals Subversion 1.5]
are not yet supported.

(''since 0.11'') The base query to be used when linkifying values of ticket
fields. The query is a URL query
string starting with `?` as used in `query:`
[TracQuery#UsingTracLinks Trac links].
(''since 0.12'') The date format. Valid option is 'iso8601' for ISO 8601 format, If
not specified, use a browser's language. (''since 0.13'') The default query for anonymous users. The query is either
in [TracQuery#QueryLanguage query language] syntax, or a URL query
string starting with `?` as used in `query:`
[TracQuery#UsingTracLinks Trac links].
(''since 0.11.2'') The default query for authenticated users. The query is either
in [TracQuery#QueryLanguage query language] syntax, or a URL query
string starting with `?` as used in `query:`
[TracQuery#UsingTracLinks Trac links].
(''since 0.11.2'') The default style to use for Pygments syntax highlighting. The default timezone to use The maximum number of templates that the template loader will cache
in memory. The default value is 128. You may want to choose a higher
value if your site uses a larger number of templates, and you have
enough memory to spare, or you can reduce it if you are short on
memory. The module prefix used in the `authz_file` for the default
repository. If left empty, the global section is used. The path to the Subversion
[http://svnbook.red-bean.com/en/1.5/svn.serverconfig.pathbasedauthz.html authorization (authz) file].
To enable authz permission checking, the `AuthzSourcePolicy` permission
policy must be added to `[trac] permission_policies`. The preferred language to use if no user preference has been set.
(''since 0.12.1'') The workflow for tickets is controlled by plugins. By default,
there's only a `ConfigurableTicketWorkflow` component in charge.
That component allows the workflow to be configured via this section
in the `trac.ini` file. See TracWorkflow for more details.

(''since 0.11'') This section configures InterTrac prefixes. Options in this section
whose name contain a "." define aspects of the InterTrac prefix
corresponding to the option name up to the ".". Options whose name
don't contain a "." define an alias.

The `.url` is mandatory and is used for locating the other Trac.
This can be a relative URL in case that Trac environment is located
on the same server.

The `.title` information is used for providing a useful tooltip when
moving the cursor over an InterTrac link.

The `.compat` option can be used to activate or disable a
''compatibility'' mode:
 * If the targeted Trac is running a version below
   [trac:milestone:0.10 0.10] ([trac:r3526 r3526] to be precise), then
   it doesn't know how to dispatch an InterTrac link, and it's up to
   the local Trac to prepare the correct link. Not all links will work
   that way, but the most common do. This is called the compatibility
   mode, and is `true` by default.
 * If you know that the remote Trac knows how to dispatch InterTrac
   links, you can explicitly disable this compatibility mode and then
   ''any'' TracLinks can become InterTrac links.

Example configuration:
{{{
[intertrac]
# -- Example of setting up an alias:
t = trac

# -- Link to an external Trac:
trac.title = Edgewall's Trac for Trac
trac.url = http://trac.edgewall.org
}}} This section is used to enable or disable components
provided by plugins, as well as by Trac itself. The component
to enable/disable is specified via the name of the
option. Whether its enabled is determined by the option value;
setting the value to `enabled` or `on` will enable the
component, any other value (typically `disabled` or `off`)
will disable the component.

The option name is either the fully qualified name of the
components or the module/package prefix of the component. The
former enables/disables a specific component, while the latter
enables/disables any component in the specified
package/module.

Consider the following configuration snippet:
{{{
[components]
trac.ticket.report.ReportModule = disabled
webadmin.* = enabled
}}}

The first option tells Trac to disable the
[wiki:TracReports report module]. 
The second option instructs Trac to enable all components in
the `webadmin` package. Note that the trailing wildcard is
required for module/package matching.

To view the list of active components, go to the ''Plugins''
page on ''About Trac'' (requires `CONFIG_VIEW`
[wiki:TracPermissions permissions]).

See also: TracPlugins Timeout value for database connection, in seconds.
Use '0' to specify ''no timeout''. ''(Since 0.11)'' URL of the icon of the project. URL of the image to use as header logo.
It can be absolute, server relative or relative.

If relative, it is relative to one of the `/chrome` locations:
`site/your-logo.png` if `your-logo.png` is located in the `htdocs`
folder within your TracEnvironment;
`common/your-logo.png` if `your-logo.png` is located in the
folder mapped to the [#trac-section htdocs_location] URL. 
Only specifying `your-logo.png` is equivalent to the latter. URL of the main project web site, usually the website in
which the `base_url` resides. This is used in notification
e-mails. URL to link to, from the header logo. Use SSL/TLS to send notifications over SMTP. (''since 0.10'') Use the action author as the sender of notification emails.
(''since 0.13'') Username for SMTP server. (''since 0.9'') Whether Wiki formatter should respect the new lines present
in the Wiki text.
If set to 'default', this is equivalent to 'yes' for new environments
but keeps the old behavior for upgraded environments (i.e. 'no').
(''since 0.11''). Whether attachments should be rendered in the browser, or
only made downloadable.

Pretty much any file may be interpreted as HTML by the browser,
which allows a malicious user to attach a file containing cross-site
scripting attacks.

For public sites where anonymous users can create attachments it is
recommended to leave this option disabled (which is the default). Whether consecutive changesets from the same author having 
exactly the same message should be presented as one event.
That event will link to the range of changesets in the log view.
(''since 0.11'') Whether login names should be converted to lower case
(''since 0.9''). Whether raw files should be rendered in the browser, or only made 
downloadable.

Pretty much any file may be interpreted as HTML by the browser,
which allows a malicious user to create a file containing cross-site
scripting attacks.

For open repositories where anyone can check-in a file, it is
recommended to leave this option disabled (which is the default). Whether the IP address of the user should be checked for
authentication (''since 0.9''). Whether wiki formatting should be applied to changeset messages.

If this option is disabled, changeset messages will be rendered as
pre-formatted text. Whether wiki-formatted changeset messages should be multiline or
not.

If this option is not specified or is false and `wiki_format_messages`
is set to true, changeset messages will be single line only, losing
some formatting (bullet points, etc). Whether wiki-formatted event messages should be truncated or not.

This only affects the default rendering, and can be overriden by
specific event providers, see their own documentation.
(''Since 0.11'') Which formatter flavor (e.g. 'html' or 'oneliner') should be
used when presenting the description for new tickets.
If 'oneliner', the [timeline] abbreviated_messages option applies.
(''since 0.11''). Which width of ambiguous characters (e.g. 'single' or
'double') should be used in the table of notification mail.

If 'single', the same width as characters in US-ASCII. This is
expected by most users. If 'double', twice the width of
US-ASCII characters.  This is expected by CJK users. ''(since
0.12.2)'' Width of the header logo image in pixels. b Project-Id-Version: Trac 0.13
Report-Msgid-Bugs-To: trac-dev@googlegroups.com
POT-Creation-Date: 2011-02-23 13:05+0900
PO-Revision-Date: 2012-09-08 00:27+0200
Last-Translator: Itamar Ostricher <itamarost (at) gmail (dot) com>
Language-Team: he <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 0.9.6
 ×©××©×ª ×¦××¢×× (r,g,b) ××©××××© ××ª××¨ ×¦××¢ ×××× ×××,
×× ×©×ª× ××× ××¨×¤×××¦×××ª ××× ××¨×××ª ××©××©××ª ××¡×§××ª ××¦××¢×× (×¨×× `intermediate_point`).
×× ×× × ×§××¢ ×¢×¨×, ×××××¨ ×¦××¢ ×××× ××× ××× `oldest_color` ×××× `newest_color`.
(''××× 0.11'') ×©××©×ª ×¦××¢×× (r,g,b) ××©××××© ××ª××¨ ××¦××¢ ××××© ××××ª×¨,
×¢×××¨ ×¡×§××ª ××¦××¢×× ×××©××©×ª ×''×××©××'', ×× ××¢××××ª ×''×××'' ××¡×××¨,
×× `color_scale` ××××¤×©×¨. (''××× 0.11'') ×©××©×ª ×¦××¢×× (r,g,b) ××©××××© ××ª××¨ ××¦××¢ ×××©× ××××ª×¨,
×¢×××¨ ×¡×§××ª ××¦××¢×× ×××©××©×ª ×''×××©××'', ×× ××¢××××ª ×''×××'' ××¡×××¨,
×× `color_scale` ××××¤×©×¨. (''××× 0.11'') ×§××¢ ×ª×× ××ª ××§×¡× ×©× Genshi ×××©××© ×××©×××ª × ××©× ×××ª×¨××.

××¨××¨×ª ××××× ××× ××ª×× ××ª × ××©× `$prefix #$ticket.id: $summary`.
`$prefix` ××× ××¢×¨× ×©× ××××¤×¦×× `smtp_subject_prefix`.
''(××× 0.11)'' ××§×¡× ××××¨× ×××× ×¢×××¨ ×××× ××××ª×¨×ª ××¢×××× ×. ×ª××× ×©×× ××ª×¨×××ª ××× ××ª×××ª ××©×× ''reporter''. ×ª××× ×©×× ××ª×¨×××ª ×××©×ª××© ×©×××¦×¢ ×©×× ×× ××××§× ×××× ××©×ª××© ×§××× ×©×××¦×¢ ×©×× ×× ××××ª× ×××§×. ×ª××× ×©×× ××ª×¨×××ª ×××©×ª××© ××××¨×× ×¢× ××××§× (''××× 0.9''). As the workflow for tickets is now configurable, there can be many
ticket states, and simply displaying closed tickets vs. all the others
is maybe not appropriate in all cases. This section enables one to
easily create ''groups'' of states that will be shown in different
colors in the milestone progress bar.

Example configuration (the default only has closed and active):
{{{
closed = closed
# sequence number in the progress bar
closed.order = 0
# optional extra param for the query (two additional columns: created and modified and sort on created)
closed.query_args = group=resolution,order=time,col=id,col=summary,col=owner,col=type,col=priority,col=component,col=severity,col=time,col=changetime
# indicates groups that count for overall completion percentage
closed.overall_completion = true

new = new
new.order = 1
new.css_class = new
new.label = new

# one catch-all group is allowed
active = *
active.order = 2
# CSS class for this interval
active.css_class = open
# Displayed label for this group
active.label = in progress
}}}

The definition consists in a comma-separated list of accepted status.
Also, '*' means any status and could be used to associate all remaining
states to one catch-all group.

The CSS class can be one of: new (yellow), open (no color) or closed
(green). New styles can easily be added using the following selector:
`table.progress td.<class>`

(''since 0.11'') ××¢× ×ª×× ×××ª ××××¤× ×××××××× ××××¨ ×©×× ××. ××ª×××ª URL ××¡××¡ ××××©×ª ××©××× ×××× ×¡×××××× ×ª××ª `/chrome/common/`.

× ××ª× ×××©×××¨ ×¨××§, ×××¨××§ ×¤×©×× ××××© ××ª ×××©×××× ×××× ××¢×¦××.

××©×ª××©×× ××ª×§×××× ×××××× ×××©×ª××© ××× ××× ×¢×
[TracAdmin trac-admin ... deploy <deploydir>] ×¢"× ×××¤×©×¨ ×××©×
×©× ×××©×××× ××¡×××××× ×¢×××¨ ××¨××§ ××©××¨××ª ××©×¨×ª ××××.
×©×× ×× ×©×× ×ª×§×£ ×¨×§ ×¢×××¨ ×ª××§×××ª `<deploydir>/htdocs/common`,
×××©×××× ×××¨×× (×××× ×××× ××¤××××× ××) ×× ×××× ×××× ×× ××××¤× ××, ××××§× ×©××ª××
× ××¡×¤×× ××××¨×©× ××¨××ª ×©×¨×ª ××××. ××ª×××ª URL ××¡××¡ ××××¤×¢ ××¨××§ ×× ××© ××××× ×©×××××ª ×××¨××§ ××.

×× ×××× ×××××ª URL ××××× ×× ×××¡×, ×× '.' ×××¤× ×× ××××ª× ××¨××§.
×¢×¨× ×¨××§ ×××¨×× ×××××× ××¤×ª××¨× ××××× ××©×××××ª. (''××× 0.11.3'') ×¡×-×ª×××× ××©××××© ×××©×¨ ××¡×¤×§. ××××§ ×©××××¦×¢ ××¤×¢××× ××© ××¨×©×××ª ××××¦××¢ ××¤×¢××× ×××××§×©×ª ×¢× ××××§×.

×× ××××× ×©×©×××ª ×××©×ª××© ×××¨××§ ×××¤×¢××××ª ×××¦×××¨ ×××× ××××. ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× × ×ª×××× ××××××¨×× ××¢× ×¤××.
×× × ×ª×× ××¡×ª××× ×-'*', ×× ×× ××ª××§×××ª ××§×××××ª ×ª××ª ×××ª× × ×ª×× ×××××.
×××××: `/trunk, /branches/*, /projectAlpha/trunk, /sandbox/*` ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× × ×ª×××× ××××××¨×× ××ª×××.
×× × ×ª×× ××¡×ª××× ×-'*', ×× ×× ××ª××§×××ª ××§×××××ª ×ª××ª ×××ª× × ×ª×× ×××××.
×××××: `/tags/*, /projectAlpha/tags/A-1.0, /projectAlpha/tags/A-v1.1` ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×¡××× MIME ×©××© ××¤×¨×© ××ª××¨ × ×ª×× ×× ××× ××¨×××. (''××× 0.11.5'') ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×ª××××××ª ×××ª×¨××ª ××ª××§×××ª ××¦×××¨××
××¢×ª ×××¡×¤× ×× ×¢×¨××× ×©× ××¦×××¨×× ××¤×× × × ×××× ×××¦×××¨××.
×× ××¨×©××× ×¨××§×, ×× ×ª××§×××ª ×××¦×××¨×× ×××ª×¨××ª. (''××× 0.12.1'') ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×¦××¢×× ××©××××© ×¢×××¨ ×ª×¦×××ª ×××¨×£ ×©× TracRevisionLog.
(''××× 1.0'') ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×××××× ×× ×©××× ××¤×¨×© ×××ª××××ª ×××××× ×××§×××ª (×××× localdomain). ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×××××× ×× ×©××× ××¤×¨×© ××××§ ×××ª×××ª ×××××× (×¢×××¨ ×©×××ª-××©×ª××© ××××××× ×× ×¢× Kerberos). ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×××¤××× × ××¢×¨××ª × ×××× ×××¨×¡×××ª ×©××© ×××¡×ª××¨ ××¡×××¨ ×××¦×××¨. (''××× 0.9'') ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×××¤××× × ××¢×¨××ª × ×××× ××¨×¡×××ª ×©××© ×××¦×× ××ª×××-×××§× onelienr ××¡×××¨ ×××¦×××¨××.

(''××× 0.11'') ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×××¤××× × ××¢×¨××ª × ×××× ××¨×¡×××ª ×©××© ×××¦×× ××ª×××-×××§× ××¡×××¨ ×××¦×××¨××.

(''××× 0.11'') ×¤×§××××ª ××××¡××¤××ª ××ª××××¡××ª, ××¨×©××× ×××¤×¨××ª ×¢"× ×¨×××××.

×× × ×§××¢ ××¢×¨× ×××××× <ALL>, ××× ××××§××× ××××× ××ª××××¡××
×××××¢× ×ª×¦××¨×£ ××¤× ×× ××§×××¦×ª ××©×× ××××. ×¤×§××××ª ×©×¡×××¨××ª ×××§×××, ××¨×©××× ××××¤×¨××ª ×¢"× ×¨×××××. Custom logging format.

If nothing is set, the following will be used:

Trac[$(module)s] $(levelname)s: $(message)s

In addition to regular key names supported by the Python
logger library (see
http://docs.python.org/library/logging.html), one could use:

- $(path)s     the path for the current environment
- $(basename)s the last path component of the current environment
- $(project)s  the project name

Note the usage of `$(...)s` instead of `%(...)s` as the latter form
would be interpreted by the ConfigParser itself.

Example:
`($(thread)d) Trac[$(basename)s:$(module)s] $(levelname)s: $(message)s`

''(since 0.10.5)'' ×××§×× ××××× ××¡× × ×ª×× ×× [wiki:TracEnvironment#DatabaseConnectionStrings ×××¨×××ª] ×××××¨ ×××¡× ×× ×ª×× ×× ×¢×××¨ ×¤×¨×××§× ×× ×¢×¨× ××¨××¨×ª ×××× ××©×× ×¨×©×××ª ××××ª××× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ×¨××× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ×ª××××¨ ××¤××¨× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× host/domain ××¨××¨×ª ×××× ××××¡××£ ×××ª××××ª ×©××× × ××××××ª ×¢×¨× ×××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ×××××ª ××¤×ª× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ××× ××¨× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ×××¡×¤×¨ ××××× ××××¦××× ××¦××¨ ××××, ×××××. (''××× 0.9'') ×¢×¨× ××¨××¨×ª ×××× ××©×× ×××¨×× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ×¢×××¤××ª ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ×¢×××¨ ×¡×× ×§×× ×§×××¨ ×××¦×××¨. (''××× 0.10'')

×× ××©××© ×× ××¢×¨× ××¨××¨×ª ×××× ××¡×× ××¦×××¨ ×¢×××¨ ××¦×××¨×× ××××××¨×× ×[[TracIni#repositories-section ××¦×××¨××]] ×× ××©××××©
××¤×× × × ×××× "××¦×××¨××". (''××× 0.12'') ×¢×¨× ××¨××¨×ª ×××× ×××××× ××¢×ª ×¡×××¨×ª ×××§××× (''××× 0.11''). ×¢×¨× ××¨××¨×ª ×××× ××©×× ××××¨× ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ×ª××××¨ ×§×¦×¨ (×××ª×¨×ª) ×¢×××¨ ×××§××× ×××©××. ×¢×¨× ××¨××¨×ª ×××× ××©×× ×¡×× ×¢×××¨ ×××§××× ×××©×× (''××× 0.9''). ×¢×¨× ××¨××¨×ª ×××× ×¢×××¨ ××¨×××× × ×-limit ×©× TracRevisionLog.
(''××× 0.11'') ×¢×¨× ××¨××¨×ª ×××× ××©×× ××¨×¡× ×¢×××¨ ×××§××× ×××©××. ×¨××× ××××× ×××¦× ××ª×¦××× ××§×××× ×©× ×§××¦××. (''××× 0.9'') Doc for c ×× ×ª×§×× ×××§××× ×¢× ××¢×¨× ××¨××× ××××. (''××× 0.11.2'') ×× ×ª×§×× ×××§××× ×¢× ×ª××××¨ ××¤××¨× ××¨×× ××××. (''××× 0.11'') ××ª×××ª ×××××× ×©× ×× ××× ××¤×¨×××§×. ××ª×××ª/××ª××××ª ×××××× ×©×ª××× ××§××× ××ª×¨×××ª,
×××ª××××ª ××××××ª ××¢×× ×× ×× ×× ××¢× ×× (Cc). ××ª×××ª/××ª××××ª ×××××× ×©×ª××× ××§××× ××ª×¨×××ª,
×××ª××××ª ××× × ×××¦×××ª ××¤×××× (Bcc). (''××× 0.10'') ××¤×©×¨ ×¦×××¢×ª ×¢×××××ª ×¢×¤"× ''×××''.

×× ××©×ª××© ××××ª× ×¡×§××ª ×¦××¢×× ××× ×¡×××× ×§×× ××§××¨:
×××× ×× ××©× ×××ª×¨, ×××× ×××© ×××ª×¨. (''××× 0.11'') ××¤×©×¨ ××ª×¨×××ª ××××¦×¢××ª ××××××. ××¤×©×¨ ××¦×× ×©× ×× ×©×× ××× ××××§××× ××¦××¨ ××××, ××× ×¨×§ ×¤×¢××××ª ××¦××¨× / ×¡×××¨× (''××× 0.9''). ××¤×¢××/××××× ×©× ××××©×ª ×§××©××¨× CamelCase ××¢××××× ××¡×¨×× (''××× 0.9''). ××¤×¢××/××××× ×©× ×¤××¦×× WikiPageNames ×¢× ×ª× ×¨××× (''××× 0.10''). ××¤×¢××/××××× ×©× ×©××××© ××ª×× HTML ×× ××××××, ×××× `<script>` ××
`<embed>` ××××¦×¢××ª ×[wiki:WikiProcessors WikiProcessor] ×©× HTML (''××× 0.10.4'').

×¢×××¨ ××ª×¨×× ×¤×××××× ××× ××©×ª××©×× ×× ×× ××××× ×××××× ××¢×¨×× ××ª ××××§×
×××××¥ ×××©×××¨ ××ª ×××¤×©×¨××ª ××××ª ××××× (××¨××¨×ª ×××××). ×× ×××¤×¦×× ×××§××¢ `[interwiki]` ×××××¨× ×ª×××××ª InterWiki ×××ª.
×©× ××××¤×¦×× ×××××¨ ××ª ××ª×××××ª. ×¢×¨× ××××¤×¦×× ×××××¨ ××ª ×-URL,
×××××¨×× ×ª××××¨ ×××¤×¦××× ××× ××××¤×¨× ××-URL ××××¦×¢××ª ×¨×××.
××ª××××ª URL ×¤×¨×××¨×××ª × ×ª××××ª.

'''×××××:'''
{{{
[interwiki]
MeatBall = http://www.usemod.com/cgi-bin/mb.pl?
PEP = http://www.python.org/peps/pep-$1.html Python Enhancement Proposal $1
tsvn = tsvn: Interact with TortoiseSvn
}}} ×××× ×©× ×ª××× ×ª ×××× ××××ª×¨×ª ××¢×××× × ××¤××§×¡×××. ×× `log_type` ××× `file`, ×× ×¦×¨×× ×××××ª ×× ×ª×× ××§×××¥ ××××.
× ×ª×××× ×××¡××× ××¤××¨×©×× ××××¡ ××ª××§×××ª `log` ×©× ××¡××××. ×× × ××ª× ×¢×¨× ××× 0 ×-1 (×× ××××), ×× ×ª××× ×× ×§××× ×©×ª×©××© ×¢×××¨ `intermediate_color`
××¦××¨× ××× ××¨×¤×××¦×× ×©× ×¢×¨× ××¦××¢. (''××× 0.11'') ×××§××¢ ×× × ××ª× ××××××¨ ×©×××ª × ××¡×¤×× ××××§×××.
×¨×× TracTicketsCustomFields ××¤×¨××× × ××¡×¤××. ××× ×××¡×¨ ×¤×¢××××ª ××©× ×××ª, ××××¨×× ×××¤×¢× ×¢×××× ×××××××× ×©× ×ª×¦××× ××§×××× ×©× ××××§×.
×××¤×¦×× ×× ××××× ××××× ××¡×¤×¨×× ×¢×©×¨×× ×××. ××× ×©×××¡×¤×¨ × ××× ×××ª×¨, ×× ××××¦×¢× ×××ª×¨ ××§×©××ª ××©×¨×ª.
××© ××§×××¢ ×¢×¨× ×× ×-0 ×¢"× ××× ××¢ ×ª×¦××× ××§×××× ×××××××. ×¢×¨× ××¨××¨×ª ××××× ××× 2.0 ×©× ×××ª. (''××× 0.12'') ×¨××ª ×¤××¨×× ×©× ××××.

××××¨ ×××××ª ××× ×××¢×¨××× (`CRITICAL`, `ERROR`, `WARN`, `INFO`, `DEBUG`). ×××¨× ×××× ×©× ×¢×××××ª ×××××××ª, ××©× ×××ª.

×¢×¨× ×× ×§×××¢ ×××× ××× ×××¤××¤× ×××××¨ ××ª ××××¢ ×××××××ª,
×××¢×§×××ª ×××ª, ××××¨ ××× ××× ×©× ×××¡×¨ ×¤×¢××××ª ×××©×ª××© ××¦××¨×
×××¦×¢ ×× ××¡× ××××©. ×¢×¨× ××¨××¨×ª ××××× ××× 0, ××©×¨ ×××¨× ××¢××××× ××¤×× ×¨×§ ××¡××× ××¡×©×. (''××× 0.12'') ×¨×©××× ×©× ×¡×××××ª URI ×× ××©×××ª ×"××××××ª", ×××××× ××ª××¨ ×§××©××¨×× ×××¦×× ×××
××¤××× ×× `[wiki] render_unsafe_content` × ×§××¢ ×-`false`. (''××× 0.11.8'') ×¨×©××× ×©× ×¡××× MIME × ××¡×¤×× ××××¤××× ×××××ª ××¤×ª×.
×××¤×××× ×××¤×¨××× ×¢"× ×¤×¡××§××, ×××× ×¡×× MIME ××© ×¨×©××× ×××¤×¨××ª
×¢"× × ×§××××ª××× (":") ×©× ×××××ª ××¤×ª× ××©××××××ª ×× ×¡×××××ª ×§××¦××. (''××× 0.10'') List of additional MIME types known by Enscript.
For each, a tuple `mimetype:mode:quality` has to be
specified, where `mimetype` is the MIME type,
`mode` is the corresponding Enscript mode to be used
for the conversion and `quality` is the quality ratio
associated to this conversion.
That can also be used to override the default
quality ratio used by the Enscript render, which is 2
(''since 0.10''). List of additional MIME types known by Pygments.

For each, a tuple `mimetype:mode:quality` has to be
specified, where `mimetype` is the MIME type,
`mode` is the corresponding Pygments mode to be used
for the conversion and `quality` is the quality ratio
associated to this conversion. That can also be used
to override the default quality ratio used by the
Pygments render. List of additional MIME types known by SilverCity.
For each, a tuple `mimetype:mode:quality` has to be
specified, where `mimetype` is the MIME type,
`mode` is the corresponding SilverCity mode to be used
for the conversion and `quality` is the quality ratio
associated to this conversion.
That can also be used to override the default
quality ratio used by the SilverCity render, which is 3
(''since 0.10''). ×¨×©××× ×©× ×¨××××× ×××××©×× ××ª `IPermissionPolicy`, ×¢×¤"× ×¡××¨ ××××ª×.
×¨××××× ××× ×× ×××× ××§×¨×ª ×××©× ××××§× ×××©××× ××¨××§.
××¨××¨×ª ××××× ××× DefaultPermissionPolicy (××ª× ××××ª ×§××-0.11) ×-LegacyAttachmentPolicy
(×××¤×× ××¨×©×××ª ATTACHMENT_* ×××¨×©×××ª ×¡×¤×¦××¤×××ª ××ª×××××) ×¨×©××× ×©× ××¦×××¨×× ×©××© ××¡× ××¨× ××× ××§×©× ×©× ×¢×××.

× ××ª× ×××©×××¨ ×××¤×¦×× ×× ×¨××§× ×× ×××××¨ ×¡×§×¨××¤× post-commit ××××¦×¢ ×§×¨×××
××¤×§××× `trac-admin $ENV changeset added` ×¢×××¨ ×¢× ×××¦×××¨×× (×××××¥).
×××¨×ª, ××© ××§×××¢ ××ª ××¢×¨× ××¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× ×©×××ª ××¦×××¨××.
×©×× ×× ×©××© ××× ××©×¤×¢× ××©×××××ª ×¢× ××××¦××¢××, ××©×× ××× ×¢ ×××××× ×-×§×××¦××ª-×©×× ×××× ××§×× ×××¨××¢×× ××××¦×××¨×× ×××¤××¨××× ×××.
×¢×¨× ××¨××¨×ª ××××× ××× ××¡× ××¨× ××ª ××¦×××¨ ××¨××¨×ª ××××××£ ××©× ×ª×××××ª ×××××¨. (''××× 01.2'') ×¨×©××× ×©× × ×ª×××× ×××¦×××¨ ×× ××ª× ×× ××××¨××.

××© ×××©×××¨ ×××¤×¦×× ×× ×¨××§× ×¢"× ×× ×××¤×©×¨ ×××¨×××ª ×××,
×××¨×ª ××© ××¡×¤×§ ×¨×©××× ×××¤×¨××ª ×¢"× ×¤×¡××§×× ×©× × ×ª×××× ×××ª×¨×× (××ª×× ×××ª ××××, ×××©× "*" ×××× ××©××© ××'××§×¨) (''××× 0.10'') ×××§×× ×§×××¥ ×§×× ×¤××××¨×¦×××ª ×××× ×××ª authz. ×××§×× ×©× mysqldump ×¢×××¨ ×××××× ××¡× × ×ª×× ×× MySQL ×××§×× ×©× pg_dump ×¢×××¨ ×××××× ××¡× × ×ª×× ×× Postgres ×©××¨××ª × ×××× ××× ××©××××©.

××××¨ ×××××ª ××× ×××¢×¨××× (`none`, `file`, `stderr`, `syslog`, `winlog`). ××¤×× ×©×××ª `<textarea>` ××©×××ª ××××× ××©×ª× ×. ×××¨×© !JavaScript.
(''××× 0.12'') ××©×ª××© ××ª×¤×¨×× ××××¨× × ×¤×ª× ×¢×××¨ ×©×× ××©×ª××© ×××¨×× ×©× ×××§×××.
××© ××××× ××ª ×××©××¢××ª ×©× ×××¤×¦×× ×× ×¢× ××××¦××¢×× ××¤× × ××¤×¢××.
×¨×× [TracTickets#Assign-toasDrop-DownList Assign-to as Drop-Down List].

×©×× ×× ×©××ª××××ª ×××××× '''××× ×''' ××¢××¨×¤×××ª ××ª×¤×¨×× ×××××¨× ×× ××¦×¨,
×× ×©××× ×××©×ª××© ××××¤×¦×× ×× ×××§×¨× ×©××ª××××ª ×××××× ×¦×¨××××ª ××××©××¨ ×××× ××ª.
(''××× 0.9'') ×××× ×××ª×¨ ×××¨×× (×××ª××) ××§××¦×× ××¦××¨×¤×× ××××§× ×××××§×××. ×××× ×××× ×××ª×¨ ×××¨×× (×××ª××) ××¨×©×××ª ×§××¦×× ××¦××¨×¤××
×©×××¤×©×¨ ×××¨×× ×©××× ××§×××¥ `.zip`. × ××ª× ××§×××¢ ××¢×¨× 1- ×¢"× ××× ××¢ ××××××× ×××¨×× ××§××¦× `.zip`. (''××× 1.0'') ×××× ×¢××× ×××§× ×××¨×× ×××ª×¨ ×××ª××. (''××× 0.11.2'') ×××× ×§×××¥ ×××¨×× ××ª×¦××× ××§×××× ×©× HTML. (''××× 0.9'') ××¡×¤×¨ ×××¨×× ×©× ×××× (1- ×¢×××¨ ××× ×××××) ×©× ××ª× ×××¦×× ××¦××¨ ××××. (''××× 0.11'') ××¡×¤×¨ ×××¨×× ×©× ×§××¦×× ×©××©×ª× × ×¢×××¨× ×ª×¦×××ª ×§×××¦××ª-××©×× ××××
×ª× ×¡× ×××¦×× ××¤×¨×©×× ××ª×¦×××ª inline (''××× 0.10''). ×××× ×××¨×× ×××ª×× ×©× ××§××¦×× ×©××©×ª× × (×××× ××©× + ×××× ×××©) ×¢×××¨× ×ª×¦×××ª ×§×××¦×ª-××©×× ××××
×ª× ×¡× ×××¦×× ××¤×¨×©×× ××¦××¨×ª inline (''××× 0.10''). ×××¨× ×××ª×¨ ××× ××××× ×©× ×××¨×××ª ××©××××ª× ××¢×ª ×××¦××¢ ×××¤××©. ×©× ×©× ××¨××× ×××××© ××ª `IEmailSender`.

××¢×¨××ª ×©××××ª ×××ª×¨×××ª ××©×ª××© ××¨××× ×× ××©××××ª ××××××××.
××¨××§ ××¡×¤×§ ×¨××× `SmtpEmailSender` ××¦××¨× ×××××¨ ××©×¨×ª SMTP,
××¨××× `SendmailEmailSender` ×××¨×¦×ª ×§×××¥ ××¨×¦× ×ª×××-`sendmail`.
(''××× 0.12'') ×©× ×××¨××× ×××××© ××ª `IPermissionStore`, ×××©××© ×× ×××× ××¨×©×××ª ××©×ª××©×× ××§×××¦××ª. ×©× ××¨××× ×××××© `ITicketGroupStatsProvider`, 
×××©××© ××××¡××£ ×¡××××¡×××§××ª ×¢× ×§×××¦××ª ×©× ×××§××× ×××¦×× ××ª×¦×××ª ××× × ×××¨×. ×©× ××¨××× ×××××© `ITicketGroupStatsProvider`, 
×××©××© ××××¡××£ ×¡××××¡×××§××ª ×¢× ×§×××¦××ª ×©× ×××§××× ×××¦×× ××ª×¦×××ª ××¤×ª ×××¨×××. ×©× ××¨××× ××××¤× ×××§×©××ª ×-URL ×××¡××¡.

××¤×©×¨××××ª ××××××ª `TimelineModule`, `RoadmapModule`, `BrowserModule`,
`QueryModule`, `ReportModule`, `TicketModule` ×-`WikiModule`. ×¢×¨×
××¨××¨×ª ××××× ××× `WikiModule`. (××× 0.9'') ×©× ××¤×¨×××§×. ××£ ×¤×¢× ×× ××¢×¨×¤× ×§××©××¨× `mailto:` ×× ××ª××× ×××¤××¨×© ××××§×,
××¤××× ×× `show_email_addresses` × ×§××¢ ×false ×× ×©×××©×ª××© ××× ××¨×©××ª 
EMAIL_VIEW (''××× 0.11.6''). ××××ª ×§××¦×× ×©××© ×××¦×× (`-1` ×¢×××¨ ××× ×××××, `0` ×¢×××¨ ×××××).

×× ×××× ×××××ª ×× `location`, ××©× ××¦×× ×©× ×ª××××××ª ××©××ª×¤××ª ×©× ××§××¦×× ×©×©×× ×. (××× 0.11). ××¡×¤×¨ ×××§××× ××××¦××× ××¤××-RSS ×©× ××"×××ª (''××× 0.11'') ××¡×¤×¨ ×××§××× ××××¦××× ××× ×¢××× ××©××××ª××ª ×××§××× ×××¨××¨×ª ×××× (''××× 0.11'') ××¡×¤×¨ ×××§××× ××××¦××× ××× ×¢××× ×××"×××ª ×××§××× ×××¨××¨×ª ×××× (''××× 0.11'') ×××ª ×××××¨× ×××××ª ××¨×©×× ××¦×××¨×× ×××©×× ××× ×××× ××ª ×××§××¢ `[repositories]` ×©× `trac.ini`.

×× ××ª××× ×××××× ×××××¨×ª ×©×××ª × ×¨××¤×× × ××××, ××¦×××¨×× ×§×¦×¨× ××××, ×× ××××× ×©×××× ×¨××©×× ××× ×©× ×××ª×§× ×.

×¨×× [TracRepositoryAdmin#Intrac.ini TracRepositoryAdmin] ××¤××¨×× ×××××ª ××¤××¨×× ×××©××© ×××§××¢ ××
××©××¨ ××¢××× ×× "× ×××××¨× ×××××ª × ××¡×¤××ª.

(''××× 0.12'') Optionally use `[trac] base_url` for redirects.

In some configurations, usually involving running Trac behind
a HTTP proxy, Trac can't automatically reconstruct the URL
that is used to access it. You may need to use this option to
force Trac to use the `base_url` setting also for
redirects. This introduces the obvious limitation that this
environment will only be usable when accessible from that URL,
as redirects are frequently used. ''(since 0.10.5)'' ×¡××¨ ××¦××ª ××¤×¨×××× ××¡×¨×× ×× ×××× `mainnav`,
×¢×¤"× ×××××. ×¨×× ×× TracNavigation. ×¡××¨ ××¦××ª ××¤×¨×××× ××¡×¨×× ×× ×××× `metanav`,
×¢×¤"× ×××××. ×¨×× ×× TracNavigation. ×¨×©××× ×¡×××¨× ×©× ×¤××××¨×× ××××× ×¢× ×× ×××§×©××ª (''××× 0.10''). ×¨×©××× ×¡×××¨× ×©× ××§×¨× ××¨×××ª ×ª×××× ×¢×××× ××©××××© ×¢×××¨ ×¤×¢××××ª ×××§× (''××× 0.11''). ××§×¡× ××ª××ª××ª ××¢××× (××××©×¨ ××©×××). ×¡××¡×× ××©×¨×ª SMTP. (''××× 0.9'') × ×ª×× ××¢×××××ª ×××××××ª. × ××ª× ××§×××¢ ×× ×ª×× ××¡××¡ ××©××ª×£ ×××¡×¤×¨ ×××¤×¢× ××¨××§ ×× ×¨××¦×× ××©×ª×£ ××ª ××¢×××××ª ××× ×××. (''××× 0.12'') × ×ª×× ×//×ª××§×××ª htdocs ××©××ª×¤×ª//.

××©×××× ×¡×××××× ××ª××§××× ×× ××××¤×× ×-/chrome/shared ×ª××ª ×-URL ×©× ××¡××××,
×× ××¡×£ ××××§×××× common ×-site.

×× ×××× ×××××ª ×©××××©× ×-site.html ××¦××¨× ××ª××××ª ×××©×§×× ×××©××ª×¤××ª ×××¡×¤×¨ ×¡×××××ª ××¨××§.

(''××× 1.0'') × ×ª×× ×//×ª××§×××ª ×¤××××× ×× ××©××ª×¤×ª//.

×¤××××× ×× ××ª××§××× ×× × ××¢× ×× ×× ××¡×£ ××¤××××× ×× ××§××××× ××ª××§×××ª `plugins` ×©× ××¡××××,
×××©×¨ ××ª××§××× ×× ××© ×§×××××ª.

(''××× 0.11'') × ×ª×× ×//×ª××§×××ª ××ª×× ×××ª ×××©××ª×¤×ª//.

×ª×× ×××ª ××ª××§××× ×× × ××¢× ××ª ×× ××¡×£ ××ª×× ×××ª ××ª××§×××ª `templates` ×©× ××¡××××,
××× ××× ×©××¡×××× ××§××××ª ×§×××××ª ××××¡ ×××©××ª×¤××ª.

(''××× 0.11'') × ×ª×× ××§×××¥ ×××¨×¦× ×©× Enscript. × ×ª×× ××§×××¥ ×××¨×¦× ×©× PHP ("××× 0.9") × ×ª×× ×××¦×××¨ ××¨××¨×ª ×××××. × ××ª× ××¡×¤×§ × ×ª×× ×××¡× (''××× 0.11'').

×××¤×¦×× ×× ××××©× ×ª, ×××¢×ª ××© ××××××¨ ××¦×××¨×× ×××§××¢ ×[TracIni#repositories-section repositories],
×× ×××©×ª××© ××¤×× × × ×××× "××¦×××¨××" × ×ª×× ××§×××¥ ×××¨×¦× ×©× sendmail.

×ª××× ××ª ×-sendmail ×××××ª ××§×× ××ª ××××¤×¦×××ª `-i` ×-`-f`.
(''××× 0.12'') × ×ª×××× ×××¨××××ª sqlite, ×××¡××ª ××ª××§×××ª ×¡××××ª ××¨××§, ×× × ×ª×××× ×××××××. (''××× 0.12'') ××ª×¨ ××ª××××ª ×××××× ××× host/domain (×××× ×©×××ª-××©×ª××© ××××).

×©×¨×ª ×-SMTP ××××¨ ××§×× ××ª××××ª ××××, ×××××¡××£ FQDN ×× ×××©×ª××© ×××¢××¨× ××§××××ª. (''××× 0.10'') × ××¢× ×× ×××××× ××¨×××ª ××ª××××ª ×××××× ×©× × ××¢× ×× ×××¨×× ×× ××¦××× ×-CC.

×× ××¤×©×¨××ª ×× ×× ×××¨××ª (××¨××¨×ª ×××××), ×× ××¢× ×× ×××¤××¢× ×ª××ª BCC.
(''××× 0.10'') ××ª×××ª URL ×××¤× ×× ××¤×¨××¡×ª ××¨××§ ××.

×××× ××ª×××ª URL ×××¡××¡ ××©××××© ××¢×ª ××¤×§×ª ××¡×××× ××©××××© ××××¥ ×××§×©×¨ ×©× ×¢××× ××§×××,
××× ×××©× ××¢×ª ×©×××× ××ª××××ª URL ×××¦×××¢××ª ×××©××× ××¨××§ ×××××××× ××ª×¨××. ××ª×××ª ××××"×-××××¨ ××©××××© ×××××××× ××ª×¨××. ×¤×§××××ª × ××¨×©××ª ××××¤××¢ ××ª×× ××¢××¤××ª.

×××× ×××××ª ×¨××§ ×× ××××× ×©× × ×ª××××. ××××××, ×× × ×§××¢ ××¢×¨× "[]",
×× ×¤×§××××ª ××××××ª ×××××ª ×××¦××¨× [close #4]. ×××× ×¢×××××ª ××××××¨× HTTPS.

×××©×¨ true, ××××§ ××ª ×××× `secure` ××× ××¢×××××ª, ×¢"× ×©×× ××©×××
××©×¨×ª ×¨×§ ××¢× ×××××¨ HTTPS. ××©×ª××© ××× ×× ×××¤×¢ ×××¨××§ × ×××© ×¨×§ ××¨× HTTPS.
(''××× 0.11.2'') hostname ×©× ×©×¨×ª SMTP ××©××××© ×××××× ××ª×¨××. ×¤××¨× ×©× ×©×¨×ª SMTP ××©××××© ×××××× ××ª×¨××. ×©×× ××ª×¨××ª ×©×× ×× ×××§× ××¢×ª ×¢×××× ×××§×. ××ª×××ª ××©××× ××©××××© ×××××××× ××ª×¨×××ª. ×©× ××©××× ××©××××© ×××××××× ××ª×¨×××ª. ×ª××××¨ ×§×¦×¨ ×©× ××¤×¨×××§×. ××¦× ××ª××××ª IP ×¢×××¨ ×¢×¨××××ª ×©× ××©×××× (×××× ×××§×).
(''××× 0.11.3'') ××¦× ××ª××××ª ×××××× ×××§×× ×©×××ª ××©×ª××©. ×× false, ××¢×¨×¤××× ××ª××××ª ××××××. (''××× 0.11'') ××¦× ×©××××ª××ª SQL ××××× ××¨××§, ××¨××ª ×××× DEBUG.
''(××× 0.11.5)'' ×××××¨ ××ª ×¡××××ª ×§×××× ×-MIME ×××××××××.

××¤×©×¨××××ª ×ª×§×× ××ª ×× 'base64' ××§×××× Base64, 'qp' ××§××××
Quoted-Printable, ×-'none' ×××××¨× ××× ×§××××, ×××§×¨× ×× ×××©××× ××××××××
×-7bit ×× ××ª××× ×××× ASCII, ×-8bit ×××¨×ª. (''××× 0.10'') Specifies which search filters should be disabled by
default on the search page. This will also restrict the
filters for the quick search function. The filter names
defined by default components are: `wiki`, `ticket`,
`milestone` and `changeset`.  For plugins, look for
their implementation of the ISearchSource interface, in
the `get_search_filters()` method, the first member of
returned tuple. Once disabled, search filters can still
be manually enabled by the user on the search page.
(since 0.12) ××§×¡× ×©××© ××××¡××£ ××ª××××ª ×©××¨×ª ×× ××©× ×©× ××××××× ××ª×¨××.

×× ×××××¨× ××¡×¨× ×× × ×¢×©× ×©××××© ××ª×××××ª [$project_name].
×× ×× ××¢×× ××× ×× ××ª×××××ª ×××, ××© ××××××¨ ×××¤×¦×× ×¨××§×. (''××× 0.10.1'') The TracBrowser for Subversion can interpret the `svn:externals`
property of folders. By default, it only turns the URLs into links as
Trac can't browse remote repositories.

However, if you have another Trac instance (or an other repository
browser like [http://www.viewvc.org/ ViewVC]) configured to browse the
target repository, then you can instruct Trac which other repository
browser to use for which external URL. This mapping is done in the
`[svn:externals]` section of the TracIni.

Example:
{{{
[svn:externals]
1 = svn://server/repos1                       http://trac/proj1/browser/$path?rev=$rev
2 = svn://server/repos2                       http://trac/proj2/browser/$path?rev=$rev
3 = http://theirserver.org/svn/eng-soft       http://ourserver/viewvc/svn/$path/?pathrev=25914
4 = svn://anotherserver.com/tools_repository  http://ourserver/tracs/tools/browser/$path?rev=$rev
}}}
With the above, the
`svn://anotherserver.com/tools_repository/tags/1.1/tools` external will
be mapped to `http://ourserver/tracs/tools/browser/tags/1.1/tools?rev=`
(and `rev` will be set to the appropriate revision number if the
external additionally specifies a revision, see the
[http://svnbook.red-bean.com/en/1.4/svn.advanced.externals.html SVN Book on externals]
for more details).

Note that the number used as a key in the above section is purely used
as a place holder, as the URLs themselves can't be used as a key due to
various limitations in the configuration file parser.

Finally, the relative URLs introduced in
[http://subversion.apache.org/docs/release-notes/1.5.html#externals Subversion 1.5]
are not yet supported.

(''since 0.11'') ×©××××ª×ª ××¡××¡ ××©××××© ××¢×ª ×§××©×¨××¨ ×©× ×¢×¨×× ×©×××ª ×××§×××.
××©××××ª× ××× ×××¨×××ª ×©××××ª×ª URL ×××ª×××× ×-`?` ××¤× ×©××©××© ×-`query:`
[TracQuery#UsingTracLinks Trac links].
(''××× 0.12'') ×¤××¨×× ×ª××¨××. ××¤×©×¨××ª ×ª×§×× × ××× 'iso8601' ×¢×××¨ ×¤××¨×× ISO 8601.
×× ×× ×××××¨, ××¢×©× ×©××××© ××©×¤×ª ×××¤××¤×. (''××× 1.0'') ×©××××ª×ª ××¨××¨×ª ×××× ×××©×ª××© ×× ×× ×××. ××©××××ª× × ×ª×× × ××ª××××¨ [TracQuery#QueryLanguage ×©×¤×ª ×©××××ª××ª],
×× ×××¨×××ª ×©××××ª×ª URL ×××ª×××× ×-`?` ××¤× ×©××©××© ×-`query:`
[TracQuery#UsingTracLinks Trac links].
(''××× 0.11.2'') ×©××××ª×ª ××¨××¨×ª ×××× ×××©×ª××© ×××××ª. ××©××××ª× × ×ª×× × ××ª××××¨ [TracQuery#QueryLanguage ×©×¤×ª ×©××××ª××ª],
×× ×××¨×××ª ×©××××ª×ª URL ×××ª×××× ×-`?` ××¤× ×©××©××© ×-`query:`
[TracQuery#UsingTracLinks Trac links].
(''××× 0.11.2'') ×¡×× ×× ××¨××¨×ª ×××× ××©××××© ×¢×××¨ ××××©×ª ×ª××××¨ ×-Pygments. ×¢×¨× ××¨××¨×ª ×××× ×¢×××¨ ×××××¨-××× ×××¡×¤×¨ ××××¨×× ×©× ×ª×× ×××ª ×©×××©××¨× ×××××¨×× ×××××× ×©× ×××¢× ××ª×× ×××ª.
×¢×¨× ××¨××¨×ª ××××× ××× 128. ×××ª×× ××ª×¨×¦× ×××××¨ ××¢×¨× ×××× ×××ª×¨ ×× ×××ª×¨ ×¢××©× ×©××××© ××ª×× ×××ª ×¨×××ª,
××§××× ××¡×¤××§ ××××¨×× ××××, ×× ×©×ª××× ×××¤×××ª ××ª ××¢×¨× ××××× ××× ×§××× ××¡×¤××§ ××××¨×× ××××. ×ª×××××ª ×××××× ×××©××©×ª ×-`authz_file` ×××¦×××¨ ××¨××¨×ª ×××××.
×× × ×©××¨ ×¨××§, ××¢×©× ×©××××© ×××§××¢ ××××××××. × ×ª×× ×[http://svnbook.red-bean.com/en/1.5/svn.serverconfig.pathbasedauthz.html ×§×××¥ × ×××× ××¨×©×××ª] ×©× Subversion.
×¢"× ×××¤×©×¨ ××××§×ª ××¨×©×××ª ×¢"× authz, ××© ××××¡××£ ××ª ×××× ×××ª ×××¨×©×××ª `AuthzSourcePolicy` ×-`[trac] permission_policies`. ×©×¤× ×××¢××¤×ª ××©××××© ×× ×× ×××××¨× ×××¢××¤××ª ×××©×ª××©. (''××× 0.12.1'') ××¨×××ª ××¢×××× ×©× ×××§××× × ×©×××ª ×¢"× ×¤××××× ××. ×××¨××¨×ª ××××,
×¨×§ ××¨××× `ConfigurableTicketWorkflow` ×××¨×× ×××.
×¨××× ×× ×××¤×©×¨ ××××××¨ ××ª ××¨×××ª ××¢×××× ××××¦×¢××ª ××§××¢ ×× ××§×××¥
`trac.ini`. ×¨×× TracWorkflow ××¤×¨××× × ××¡×¤××.

(''××× 0.11'') ××§××¢ ×× ×××××¨ ×ª××××××ª ×¢×××¨ IntreTrac. ×××¤×¦×××ª ×××§××¢ ××
×©×©×× ×××× "." ×××××¨××ª ×××××× ×©× ×ª×××××ª ×-InterTrac
×××ª×××× ××©× ××××¤×¦×× ×¢× ××ª× ".". ×××¤×¦×××ª ×©×©×× ××× × ×××× "." ×××××¨××ª ×©×××ª × ×¨××¤××.

××××¤××× `.url` ××× × ×××¨××, ×××©××© ××××ª××¨ ×××¨××§ ××××¨.
×× ×××× ×××××ª URL ×××¡× ×××§×¨× ×©×¡××××ª ×××¨××§ ××××¨×ª × ××¦××ª ×¢× ×××ª× ××©×¨×ª.

××××¤××× `.title` ××©××© ××§×××¢×ª ×××× ××ª ×¡×××¢ ××¢×ª ××¢××¨×ª ××¡×× ××¢× ×§××©××¨ InterTrac.

××××¤××× `.compat` ××©××© ×××¤×¢×× ×× ××××× ×©× ××¦× ''×ª×××××ª'':
 * ×× ××¨××§ ×××¢× ××¨××¥ ××¨×¡× ××ª××ª ×××¨×¡×
   [trac:milestone:0.10 0.10] ([trac:r3526 r3526] ×××¢× ×××××§), ××
   ××× ×× ××××¢ ××× ×××¤× ××§××©××¨ InterTrac, ×××× ×× ××××¨×××ª
   ×××¨××§ ×××§××× ××××× ××ª ××§××©××¨ ×× ×××. ×× ×× ××§××©××¨×× ××¢×××
   ××××¤× ××, ××× ××¨×××ª ×× ×¤××¦×× ××¢×××. ××¦× ×× × ×§×¨× ××¦× ×ª×××××ª,
   ×××× ×××¤×¢× ×××¨××¨×ª ×××× (×¢×¨×× `true`).
 * ××××× ×××××¢ ×©××¨××§ ×××¢× ××××¢ ×××¤× ××§××©××¨× InterTrac,
   × ××ª× ×××××ª ××ª ××¦× ××ª×××××ª ××¦××¨× ××¤××¨×©×ª, ×××
   ''××'' ×§××©××¨× TracLinks ×××××× ×××¤×× ××§××©××¨× InterTrac.

××××¨××ª ××××××:
{{{
[intertrac]
# -- ××××× ×××××¨×ª ×©× × ×¨××£:
t = trac

# -- ×§××©××¨ ×××¨××§ ×××¦×× ×:
trac.title = Edgewall's Trac for Trac
trac.url = http://trac.edgewall.org
}}} This section is used to enable or disable components
provided by plugins, as well as by Trac itself. The component
to enable/disable is specified via the name of the
option. Whether its enabled is determined by the option value;
setting the value to `enabled` or `on` will enable the
component, any other value (typically `disabled` or `off`)
will disable the component.

The option name is either the fully qualified name of the
components or the module/package prefix of the component. The
former enables/disables a specific component, while the latter
enables/disables any component in the specified
package/module.

Consider the following configuration snippet:
{{{
[components]
trac.ticket.report.ReportModule = disabled
webadmin.* = enabled
}}}

The first option tells Trac to disable the
[wiki:TracReports report module]. 
The second option instructs Trac to enable all components in
the `webadmin` package. Note that the trailing wildcard is
required for module/package matching.

To view the list of active components, go to the ''Plugins''
page on ''About Trac'' (requires `CONFIG_VIEW`
[wiki:TracPermissions permissions]).

See also: TracPlugins ×¢×¨× timeout ××××××¨ ×××¡× ×× ×ª×× ××, ××©× ×××ª.
× ××ª× ×××©×ª××© ××¢×¨× '0' ×¢"× ××¦××× ''××× timeout''. (''××× 0.11'') ××ª×××ª ×××××§×× ×©× ××¤×¨×××§×. ××ª×××ª URL ×©× ×ª××× ×ª ×××× ××××ª×¨×ª ××¢×××× ×.
×××ª×××ª ××××× ×××××ª ×××¡××××××ª, ×××¡××ª ××©×¨×ª, ×× ×××¡××ª.

×× ×××¡××ª, ×××ª×××ª ×××¡××ª ×××× ××××§××× `/chrome`:
`site/your-logo.png` ×× `your-logo.png` × ××¦× ××ª××§×××ª `htdocs`
××ª×× ×-TracEnvironment;
`common/your-logo.png` ×× `your-logo.png` × ××¦× ××ª××§×××
×××××¤× ×××ª×××ª ×©× [#trac-section htdocs_location]. 
××ª××× ×©× `your-logo.png` ×××× ××× × ×©×§××× ×××¤×©×¨××ª ××©× ×××. ××ª×××ª ××ª×¨ ××¤×¨×××§× ××¨××©×. ××"× ×××ª×¨ ×× × ××¦× `base_url`.
×××ª×××ª ××©××©×ª ×××ª×¨×××ª ×××××××. ××ª×××ª URL ××§××©××¨ ××××× ××××ª×¨×ª ××¢×××× ×. ××©×ª××© ×-SSL/TLS ××©××××ª ×××× ××ª×¨×× ××××¦×¢××ª SMTP. (''××× 0.10'') ×¢×©× ×©××××© ××××¦×¢ ××¤×¢××× ××ª××¨ ××©××× ×©× ×××××× ×××ª×¨××.
(''××× 0.13'') ×©× ××©×ª××© ××©×¨×ª SMTP. (''××× 0.9'') ××× ××××§×-×¤××¨×××¨ ×¦×¨×× ×××ª××©× ××©××¨××ª ××××©××ª ×× ××¦×××ª ××××§×-××§×¡×.
×× × ×§××¢ ××¢×¨× 'default', ×× ×©×§×× ××¢×¨× 'yes' ×¢×××¨ ×¡×××××ª ×××©××ª
××× ×©×××¨ ×¢× ×××ª× ××××ª ×××©× × ×¢×××¨ ×¡×××××ª ××©×××¨×××ª (×××××¨ 'no').
(''××× 0.11'') Whether attachments should be rendered in the browser, or
only made downloadable.

Pretty much any file may be interpreted as HTML by the browser,
which allows a malicious user to attach a file containing cross-site
scripting attacks.

For public sites where anonymous users can create attachments it is
recommended to leave this option disabled (which is the default). ××× ×§×××¦××ª-×©×× ×××× ×¢××§×××ª ××××ª× ×××©×ª××© ××¢×××ª ×××ª× ××××¢× ×¦×¨××××ª ×××××ª ×××¦×××ª ××ª××¨ ×××¨××¢ ××××.
×××¨××¢ ×× ×××× ××§××©×¨ ××××× ×©× ×§×××¦××ª-×©×× ×××× ××ª×¦×××ª ×××××. (''××× 0.11'') ××× ×©×××ª ×× ××¡× ×¦×¨×××× ×××××ª ××××¨×× ××××ª×××ª ×§×× ××ª (''××× 0.9'') ××× ×××¦×× ×§××¦× raw ××¡×××¨, ×× ×¨×§ ×××¤×©×¨ ×××¨×× ×©×××.

×××¢× ×× ×§×××¥ × ××ª× ××¤××¨××© ×-HTML ×¢"× ×××¤××¤×, ×××¨ ××××¤×©×¨
×××©×ª××© ×××× × ×××¦××¨ ×§×××¥ ××××× ×ª×§××¤××ª ××¡×× cross-site scripting.

×¢×××¨ ××¦×××¨×× ×¤×ª×××× ××× ×× ××× ×××× ×××× ××¡ ×§×××¥, ×××××¥
×××©×××¨ ××¤×©×¨××ª ×× ××××× (××¨××¨×ª ×××××). ××× ××ª×××ª ×-IP ×©× ×××©×ª××© ×¦×¨××× ××××××§ ××¦××¨× ××××××ª (''××× 0.9''). ××× ×¦×¨×× ××××× ×¢××¦×× ×××§× ×¢× ××××¢××ª ×§×××¦××ª-×©×× ××××.

×× ×××¤×¦×× ×× ×× ×××¤×¢××ª, ××××¢××ª ×§×××¦××ª-×©×× ×××× ×××¦×× ××ª××¨ ××§×¡× pre-formatted. ××× ××××¢××ª ×§×××¦××ª-×©×× ×××× ××¤××¨××-×××§× ××××¨××ª ×××××ª ××¨××××ª-×©××¨××ª ×× ××.

×× ×××¤×¦×× ×× ××× × ×××××¨×ª ×× × ×§××¢×ª ×false, ×`wiki_format_messages`
× ×§××¢ ×true, ××××¢××ª ×§×××¦××ª ×©×× ×××× ×××× ×× ××ª ×©××¨× ×××××,
×ª×× ××××× ×××§ ×××¢××¦×× (×¨×©××××ª ××××¡×¤×¨××ª ××××'). ××× ××§×¦×¨ ××××¢××ª ×××¨××¢×× ××¤××¨××-×××§× ×× ××.

×× ××©×¤××¢ ×¨×§ ×¢× ××¦××ª ××¨××¨×ª ×××××, ×× ××ª× ××¢×§××¤× ×¢"× ×¡×¤×§× ×××¨××¢×× ×¡×¤×¦××¤×××. ××© ××××××¢×¥ ××ª××¢×× ×©×××.
(''××× 0.11'') ××××× ×¡×× ×× ×¤××¨×××¨ (×××©× 'html' ×× 'oneliner') ×××©×ª××© ×××¦××ª ××ª××××¨ ×××¤××¨× ×©× ×××§××× ×××©××.
×× 'oneliner', ××××¤×¦××  [timeline] abbreviated_messages ×ª×§×¤× (''××× 0.11''). ××××× ×¨××× ×©× ×ª×××× ××-××©××¢××× (×××©× 'single' ×× 'double') ××© ×××©×ª××© ××××× ×©× ××××××× ××ª×¨××.

×× 'single', ×××ª× ××¨××× ××× ×ª×××× ×-US-ASCII.
×××× ×××ª× ××××ª ×××¦××¤× ×¢"× ××¨×××ª ×××©×ª××©××.
×× 'double', ×¨××× ××¤×× ×-US-ASCII.
×××× ×××ª× ×××ª ×××¦××¤× ×¢"× ××©×ª××©× CJK. (''××× 0.12.2'') ×¨××× ×©× ×ª××× ×ª ×××× ××××ª×¨×ª ××¢×××× × ××¤××§×¡×××. b 