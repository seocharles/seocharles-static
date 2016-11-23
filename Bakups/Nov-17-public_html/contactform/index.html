<?PHP
######################################################
#                                                    #
#                Forms To Go 3.2.4                   #
#             http://www.bebosoft.com/               #
#                                                    #
######################################################






error_reporting(E_ERROR | E_WARNING | E_PARSE);
ini_set('track_errors', true);

function DoStripSlashes($FieldValue) 
{ 
 if ( get_magic_quotes_gpc() ) { 
  if (is_array($FieldValue) ) { 
   return array_map('DoStripSlashes', $FieldValue); 
  } else { 
   return stripslashes($FieldValue); 
  } 
 } else { 
  return $FieldValue; 
 } 
}

#----------
# FilterCChars:

function FilterCChars($TheString)
{
 return preg_replace('/[\x00-\x1F]/', '', $TheString);
}


if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
 $ClientIP = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
 $ClientIP = $_SERVER['REMOTE_ADDR'];
}

$firstname = DoStripSlashes( $_REQUEST['first-name'] );
$lastname = DoStripSlashes( $_REQUEST['last-name'] );
$website = DoStripSlashes( $_REQUEST['company'] );
$email = DoStripSlashes( $_REQUEST['your-email'] );
$phone = DoStripSlashes( $_REQUEST['phone'] );
$service = DoStripSlashes( $_REQUEST['service'] );
$message = DoStripSlashes( $_REQUEST['message'] );



# Include message in error page and dump it to the browser

if ($ValidationFailed === true) {

 $ErrorPage = '<html><head><title>Error</title></head><body>Errors found: <!--VALIDATIONERROR--></body></html>';

 $ErrorPage = str_replace('<!--VALIDATIONERROR-->', $ErrorList, $ErrorPage);
 $ErrorPage = str_replace('<!--FIELDVALUE:name-->', $name, $ErrorPage);
 $ErrorPage = str_replace('<!--FIELDVALUE:email-->', $email, $ErrorPage);
 $ErrorPage = str_replace('<!--FIELDVALUE:message-->', $message, $ErrorPage);
  

 echo $ErrorPage;
 exit;

}
# Email to Form Owner

$emailSubject = FilterCChars("SEOCharles Inquiry");

$emailBody = "From SEOCharles Contact Form\n"
 . "\n"
 . "Name: $firstname $lastname\n\n"
 . "Website: $website\n\n"
 . "Email: $email\n\n"
 . "Phone: $phone\n\n"
 . "Service: $service\n\n"
 . "Message: \n\n"
 . "$message";
 $emailTo = 'Charles <charles@seocharles.com>';
  
 $emailFrom = FilterCChars("$email");
  
 $emailHeader = "From: $emailFrom\n"
  . "MIME-Version: 1.0\n"
  . "Content-type: text/plain; charset=\"ISO-8859-1\"\n"
  . "Content-transfer-encoding: 8bit\n";
  
 mail($emailTo, $emailSubject, $emailBody, $emailHeader);


# Redirect user to success page

header("Location: http://www.seocharles.com/contact");
exit;
?>