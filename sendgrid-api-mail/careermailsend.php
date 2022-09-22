<?php

require_once 'apimailer/sendgrid/sendgrid-php.php';
$mail = new \SendGrid\Mail\Mail();

//use PHPMailer\PHPMailer\PHPMailer;

//require_once 'phpmailer/Exception.php';
//require_once 'phpmailer/PHPMailer.php';
//require_once 'phpmailer/SMTP.php';

//$mail = new PHPMailer(true);

$alert = '';

if(isset($_POST['send'])){

  $jobid = $_POST['jobid'];
  $position = $_POST['position'];
  $firstname = $_POST['firstname'];
  $lastname = $_POST['surname'];
  $email = $_POST['email'];
  $contact = $_POST['contact'];
  $alt_contact = $_POST['alt_contact'];
  $dob = $_POST['dob'];
  $experience = $_POST['experience'];
  $rel_exp = $_POST['rel_exp'];
  $address = $_POST['address'];
  $keyskill = $_POST['keyskills'];
  $Subject = 'Career Application';
  $file_tmp  = $_FILES['resume']['tmp_name'];
  $file_name = $_FILES['resume']['name'];



    $body = '<html><body>';
    $body .= '<table rules="all" style="border-color: #666;" cellpadding="10">';
    $body .= "<tr style='background: #eee;'><td><strong>Firstname:</strong> </td><td>" . $firstname . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Lastname:</strong> </td><td>" . $lastname . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Job ID:</strong> </td><td>" . $jobid . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Email:</strong> </td><td>" . $email . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Contact:</strong> </td><td>" . $contact . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Dob:</strong> </td><td>" . $dob . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Alternate contact:</strong> </td><td>" . $alt_contact . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Experience:</strong> </td><td>" . $experience . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Relevant Experience:</strong> </td><td>" . $rel_exp . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Adress:</strong> </td><td>" . $address . "</td></tr>";
    $body .= "<tr style='background: #eee;'><td><strong>Keyskill:</strong> </td><td>" . $keyskill . "</td></tr>";
    
    $body .= "</table>";
    $body .= "</body></html>";










 $mail->setFrom("enquiry@estpl.net", "Enquiry ESTPL");
 $mail->setSubject("New Contact Request");
 //$email->addTo("surya@estpl.net", "Enquiry ESTPL");
 $mail->addTo("panda.surya112@gmail.com", "Enquiry ESTPL");
 $mail->addContent("text/plain", 'Enquiry Test');
 $mail->addContent(
    "text/html", $body
);

$file_encoded = base64_encode(file_get_contents($file_tmp));
$mail->addAttachment(
    $file_encoded,
    "application/text",
    $file_name,
    "attachment"
);


$sendgrid = new \SendGrid('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');
try {
    $response = $sendgrid->send($mail);
    print $response->statusCode() . "\n";
    print_r($response->headers());
    print $response->body() . "\n";
} catch (Exception $e) {
    echo 'Caught exception: '. $e->getMessage() ."\n";
}



}




?>

