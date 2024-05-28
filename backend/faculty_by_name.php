<?php
header('Content-Type:application/json');
$query = $_POST['name'] ;
$conn = mysqli_connect('localhost', 'root', 'Nishantp29@@', 'project_DBMS');
if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error); 
} else {
    $sql = "SELECT * FROM teacher where Firstname like '%$query%'";
    $res = mysqli_query($conn,$sql);
    if($res){
        $rows = mysqli_num_rows($res);
        $lot = array();
        for ($i=0; $i < $rows; $i++) { 
            $lot[]=mysqli_fetch_assoc($res);
        }   
        
        echo json_encode($lot);
    }else{
        echo mysqli_error($conn);
    }
}

?>
