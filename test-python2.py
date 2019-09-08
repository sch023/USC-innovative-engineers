3import untangle
from ftplib import FTP

ftp = FTP('ftp.bom.gov.au')
ftp.cwd('anon/gen/fwo/')
FTPname = 'IDQ11295.xml'

localFile = 'exampleData.txt'
ftp.retrbinary('RETR ' + FTPname, localfile.write, 1024)