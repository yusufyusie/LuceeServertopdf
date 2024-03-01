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