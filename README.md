Setting Up FlyingSaucer, iText, Jsoup, and wkhtmltopdf on Lucee Server (Windows and Linux)
Windows Setup:
Download Jar Files:
Copy
Insert
New
Download FlyingSaucer jar:
wget https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar
Copy
Insert
New
Download iText jar:
wget https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar
Move Jar Files to Lucee Bundles Directory:
Copy
Insert
New
Move FlyingSaucer jar:
Move-Item -Path .\flying-saucer-core-9.1.22.jar -Destination C:\path\to\your\lucee-server\bundles
Copy
Insert
New
Move iText jar:
Move-Item -Path .\itextpdf-5.5.13.jar -Destination C:\path\to\your\lucee-server\bundles
Download Jsoup Jar:
Download Jsoup jar from Jsoup website
Copy
Insert
New
:
Invoke-WebRequest -Uri "https://repo1.maven.org/maven2/org/jsoup/jsoup/1.14.3/jsoup-1.14.3.jar" -OutFile "C:\path\to\your\directory\jsoup-1.14.3.jar"
Restart Lucee Server:
Copy
Insert
New
Restart Lucee server to load new jar files:
/path/to/lucee-server/bin/lucee restart
Execute wkhtmltopdf Command:
Use the cfexecute tag to convert HTML to PDF using wkhtmltopdf.
Linux Setup:
Download Jar Files:
Copy
Insert
New
Download FlyingSaucer jar:
wget https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar
Copy
Insert
New
Download iText jar:
wget https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar
Copy
Insert
New
Download Jsoup jar:
wget https://repo1.maven.org/maven2/org/jsoup/jsoup/1.14.3/jsoup-1.14.3.jar
Move Jar Files to Lucee Bundles Directory:
Copy
Insert
New
Move jar files to Lucee bundles directory:
mv ./flying-saucer-core-9.1.22.jar /path/to/lucee-server/bundles
mv ./itextpdf-5.5.13.jar /path/to/lucee-server/bundles
mv ./jsoup-1.14.3.jar /path/to/lucee-server/bundles
Install wkhtmltopdf:
Download and install wkhtmltopdf executable.
Restart Lucee Server:
Restart Lucee server to apply the changes.
Execute wkhtmltopdf Command:
Use the wkhtmltopdf command to convert HTML to PDF.
These steps will help you set up FlyingSaucer, iText, Jsoup, and wkhtmltopdf on a Lucee server running on Windows and Linux. If you need further assistance, feel free to ask.
