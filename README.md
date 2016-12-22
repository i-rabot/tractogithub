# tractogithub


tractogithub is based on Tratihubis.
It also uses a trac implementation hacked (in `wiki/parser.py` and `wiki/formatter.py`)
to parse code blocks, italics, bold, etc.  See tracformatter/ subdirectory.  (This 
subdirectory is added to the python path so that `import trac` functions.)

Unfortunately, it is specialized past the point of being worthy to push back to tratihubis.


## Tratihubis
Tratihubis converts Trac tickets to Github issues by using the following steps:

1. The user manually exports the Trac tickets to convert to a CSV file.
2. Tratihubis reads the CSV file and uses the data to create Github issues and
   milestones.

For more information, visit <http://pypi.python.org/pypi/tratihubis/>.
