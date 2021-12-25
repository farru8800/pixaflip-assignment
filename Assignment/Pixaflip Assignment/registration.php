<html>
<body>

<?php

//CONNECT TO THE DATABASE
$servername = "localhost";
$username = "root";
$password = "";
$database = "assignment_db";



/*$name= $_POST['fullname'];
$email= $_POST['email'];
$pass= $_POST['pass'];
$phone= $_POST['phone'];
$gender= $_POST['gender'];
//$age= $_POST['r_age'];
//$city= $_POST['city'];
//$state= $_POST['r_state'];
$blood= $_POST['bloodgroup'];
$file= $_POST['idproof'];*/

//CREATING CONNECTION
$conn = mysqli_connect($servername, $username, $password, $database);

//DIE IF CONNECTION IS DENAYIED
if ($conn)
{ 
  
}

//$sql =  "INSERT INTO `donor_register` (`dr_id`, `dr_name`, `dr_email`, `dr_pass`, `dr_phone`, `dr_gender`, `dr_blood`, `dr_file`) VALUES ('' , '{$name}', '{$email}', '{$pass}', '{$phone}', '{$gender}', '{$blood}', '{$file}')";


echo "<center><h1>INSERTED SUCCESSFULY.........!</h1></center>";
 
/*if($sql){
 
}

else{
 
}
*/
?>



</body>
</html>