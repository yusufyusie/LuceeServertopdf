Script Code

<!--- Define paths and filenames as variables --->
<cfset wkhtmltopdfPath = "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe">
<cfset htmlPageUrl = "https://griffintrailer.com/dealer/orders/order-confirmation.cfm">
<cfset pdfOutputPath = "C:\lucee\tomcat\webapps\ROOT\order-confirmation.pdf">
<cfset pdfFileName = "order-confirmation.pdf">

<!--- Set the page encoding to UTF-8 --->
<cfprocessingdirective pageEncoding="utf-8">

<!--- Set the content type to application/pdf --->
<cfcontent type="application/pdf">

<!--- Set the HTTP header to make the browser download the PDF as a file --->
<cfheader name="Content-Disposition" value="attachment;filename=#pdfFileName#">

<!--- Define the arguments for the wkhtmltopdf command --->
<cfset wkhtmltopdfArguments = "
    --page-size Letter 
    --margin-top 0.25in 
    --margin-bottom 0.25in 
    --margin-left 0.25in 
    --margin-right 0.25in 
    #htmlPageUrl# 
    #pdfOutputPath#">

<!--- Execute the wkhtmltopdf command to convert the HTML page to a PDF --->
<cfexecute 
    name="#wkhtmltopdfPath#" 
    arguments="#wkhtmltopdfArguments#" 
    timeout="60" 
/>



# Windows Setup

## Download Necessary Jar Files

You can download the necessary jar files for FlyingSaucer and iText from the Maven repository:

- [Maven repository](https://mvnrepository.com/)

Alternatively, you can use `wget` or `curl` commands in the terminal to download the jar files:

```powershell
# Download FlyingSaucer jar
Invoke-WebRequest -Uri https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar -OutFile ./flying-saucer-core-9.1.22.jar

# Download iText jar
Invoke-WebRequest -Uri https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar -OutFile ./itextpdf-5.5.13.jar

Move Jar Files to Lucee Bundles Directory
Move the downloaded jar files to the lucee-server/bundles or deploy directory in your Lucee installation:

# Replace "C:\lucee\lucee-server\bundles" with the actual path to your Lucee bundles directory
Move-Item -Path .\flying-saucer-core-9.1.22.jar -Destination C:\lucee\lucee-server\bundles
Move-Item -Path .\itextpdf-5.5.13.jar -Destination C:\lucee\lucee-server\bundles


Restart Lucee Server
Restart your Lucee server to ensure the new jar files are loaded. The command to restart Lucee depends on how you have it installed. Here is a general approach:
	# Replace "/path/to/lucee-server/bin/lucee" with the actual path to your Lucee server binary
/path/to/lucee-server/bin/lucee restart

Download Additional Dependencies
Download the Jsoup jar file from the Jsoup website:
Invoke-WebRequest -Uri "https://repo1.maven.org/maven2/org/jsoup/jsoup/1.14.3/jsoup-1.14.3.jar" -OutFile "C:\path\to\your\directory\jsoup-1.14.3.jar"

Download the wkhtmltopdf executable from the wkhtmltopdf website:

wkhtmltopdf downloads


Linux Setup
The setup process for Linux is similar to Windows. Here are the steps:

Download Necessary Jar Files
Use wget or curl to download the required jar files for FlyingSaucer, iText, and Jsoup:

# Download FlyingSaucer jar
wget https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar

# Download iText jar
wget https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar

# Download Jsoup jar
wget https://repo1.maven.org/maven2/org/jsoup/jsoup/1.14.3/jsoup-1.14.3.jar

Move Jar Files to Lucee Bundles Directory
Move the downloaded jar files to the Lucee server bundles directory. Replace /path/to/lucee-server/bundles with the actual path to your Lucee bundles directory:

# Move FlyingSaucer jar
mv ./flying-saucer-core-9.1.22.jar /path/to/lucee-server/bundles

# Move iText jar
mv ./itextpdf-5.5.13.jar /path/to/lucee-server/bundles

# Move Jsoup jar
mv ./jsoup-1.14.3.jar /path/to/lucee-server/bundles

Install wkhtmltopdf
Download the wkhtmltopdf executable from the wkhtmltopdf website and ensure that it is accessible in your Linux environment.

Restart Lucee Server
After moving the jar files, restart your Lucee server to ensure the changes are applied.

Execute wkhtmltopdf Command
You can use a similar wkhtmltopdf command in your Linux environment to convert HTML to PDF files.