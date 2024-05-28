<?php
header('Content-Type:application/json');
$query = $_POST['std'] ;
$conn = mysqli_connect('localhost', 'root', 'Nishantp29@@', 'project_DBMS');
if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error); 
} else {
    $sql = "SELECT * FROM student where STD='$query' ORDER BY Pr DESC LIMIT 3 ";
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
