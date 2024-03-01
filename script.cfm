# windows

To download the necessary jar files for FlyingSaucer and iText, you can use the Maven repository. Here are the steps:

                Maven repository at https://mvnrepository.com/.

                Maven repository at https://mvnrepository.com/.

Alternatively, you can use wget or curl commands in the terminal to download the jar files. Here are the commands:

        # Download FlyingSaucer jar
        wget https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar

        # Download iText jar
        wget https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar

Open a PowerShell window and use the following commands:

        # Download FlyingSaucer jar
        Invoke-WebRequest -Uri https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar -OutFile ./flying-saucer-core-9.1.22.jar

        # Download iText jar
        Invoke-WebRequest -Uri https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar -OutFile ./itextpdf-5.5.13.jar

move them to the lucee-server/bundles or deploy directory in your Lucee installation

        # Lucee Server  # Replace "/path/to/lucee-server/bundles" with the actual path to your Lucee bundles directory
        Move-Item -Path .\flying-saucer-core-9.1.22.jar -Destination /path/to/lucee-server/bundles
        Move-Item -Path .\itextpdf-5.5.13.jar -Destination /path/to/lucee-server/bundles

Restart your Lucee server to ensure the new jar files are loaded. 
        # The command to restart Lucee depends on how you have it installed
        # Here is a general approach
        /path/to/lucee-server/bin/lucee restart

        # Replace "C:\lucee\lucee-server\bundles" with the actual path to your Lucee bundles directory
        Move-Item -Path .\flying-saucer-core-9.1.22.jar -Destination C:\lucee\lucee-server\bundles
        Move-Item -Path .\itextpdf-5.5.13.jar -Destination C:\lucee\lucee-server\bundles

Download the Jsoup jar file from the Jsoup website (https://jsoup.org/download).

        Invoke-WebRequest -Uri "https://repo1.maven.org/maven2/org/jsoup/jsoup/1.14.3/jsoup-1.14.3.jar" -OutFile "C:\path\to\your\directory\jsoup-1.14.3.jar"

Download the wkhtmltopdf executable from the wkhtmltopdf website (https://wkhtmltopdf.org/downloads.html).
             wkhtmltopdf 




# script code

			<!--- Set the page encoding to UTF-8 --->
				<cfprocessingdirective pageEncoding="utf-8">

				<!--- Set the content type to application/pdf --->
				<cfcontent type="application/pdf">

				<!--- Set the HTTP header to make the browser download the PDF as a file --->
				<cfheader name="Content-Disposition" value="attachment;filename=order-confirmation.pdf">

				<!--- Execute the wkhtmltopdf command to convert the HTML page to a PDF --->
				<cfexecute 
					name="C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe" 
					arguments="
						--page-size Letter 
						--margin-top 0.25in 
						--margin-bottom 0.25in 
						--margin-left 0.25in 
						--margin-right 0.25in 
						https://griffintrailer.com/dealer/orders/order-confirmation.cfm 
						C:\lucee\tomcat\webapps\ROOT\order-confirmation.pdf" 
					timeout="60" 
				/>




# liunx


To set up FlyingSaucer, iText, Jsoup, and wkhtmltopdf on a Lucee server running on Linux, you can follow similar steps as mentioned for Windows. Here is how you can do it:

						Download the Necessary Jar Files
						Use wget or curl to download the required jar files for FlyingSaucer and iText:

						Copy
						Insert
						New
						# Download FlyingSaucer jar
						wget https://repo1.maven.org/maven2/org/xhtmlrenderer/flying-saucer-core/9.1.22/flying-saucer-core-9.1.22.jar

						# Download iText jar
						wget https://repo1.maven.org/maven2/com/itextpdf/itextpdf/5.5.13/itextpdf-5.5.13.jar
						Download the Jsoup jar file from the Jsoup website:

						Copy
						Insert
						New
						wget https://repo1.maven.org/maven2/org/jsoup/jsoup/1.14.3/jsoup-1.14.3.jar
						Move Jar Files to Lucee Bundles Directory
						You will need to move the downloaded jar files to the Lucee server bundles directory. Replace /path/to/lucee-server/bundles with the actual path to your Lucee bundles directory.

						Copy
						Insert
						New
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

These steps should help you set up FlyingSaucer, iText, Jsoup, and wkhtmltopdf on a Lucee server running on Linux. Let me know if you need further assistance!