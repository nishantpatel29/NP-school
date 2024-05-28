<?php
header('Content-Type:application/json');
$conn = mysqli_connect('localhost', 'root', 'Nishantp29@@', 'project_DBMS');
if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error); 
} else {
    $sql = "SELECT * FROM teacher WHERE Experience in (SELECT MAX(Experience) FROM teacher group by `Subject`)";
    // echo $sql;
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
