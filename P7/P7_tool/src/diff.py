from sys import exit
from difflib import HtmlDiff

try:
    file = open(sys.argv[2],'r')
    content1 = file.read().splitlines(keepends=False)
    file.close()
    file = open(sys.argv[3],'r')
    content2 = file.read().splitlines(keepends=False)
    file.close()
    html = HtmlDiff().make_file(content1,content2)
    file = open(sys.argv[1],'w')
    file.write(html)
    file.close()
except:
    exit(1)
