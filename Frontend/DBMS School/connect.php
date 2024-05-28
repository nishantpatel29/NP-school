<?php
$firstname=$_POST['firstname']; 
$surname=$_POST['surname'];
$father=$_POST['father'];
$aadhar=$_POST['aadhar'];
$dob=$_POST['dob'];
$std=$_POST['std'];
$phone=$_POST['phone'];
$percentage= $_POST['percentage'];
$email=$_POST['email'];
$gender=$_POST['g'];
$Stream=$_POST['Stream'];
$conn = new mysqli('localhost', 'root', 'Nishantp29@@', 'project_DBMS');
if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error); 
} else {
    $sql = "INSERT INTO student (Aadhar_ID, Firstname, Surname, Father, DOB, STD, Phoneno,pr, Gender, Email, Stream) 
    VALUES ('$aadhar', '$firstname', '$surname', '$father', '$dob', '$std', '$phone', '$percentage', '$gender', '$email','$Stream')";
    if(mysqli_query($conn,$sql)){
        echo "submitted successfully";
    }else{
        echo mysqli_error($conn);
    }
}
?>
