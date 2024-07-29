<?php
$database_credentials = [
    "host" => "localhost",
    "username" => "root",
    "password" => "",
    "dbname" => "portfolio",
];

$db = mysqli_connect(
    $database_credentials["host"], 
    $database_credentials["username"], 
    $database_credentials["password"], 
    $database_credentials["dbname"]
);

function fetch($db, $query, $method = 1){
    $result = mysqli_query($db, $query);
    $rows = [];
    switch ($method) {
        case 1:
            while ($row = mysqli_fetch_row($result)) {
                $rows[] = $row;
            }
            break;
        case 2:
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
            break;
        case 3:
            while ($row = mysqli_fetch_array($result)) {
                $rows[] = $row;
            }
            break;
        case 4:
            while ($row = mysqli_fetch_object($result)) {
                $rows[] = $row;
            }
            break;
        
        default:
            echo "Wrong Method";
            die;
            break;
    }
    
    return $rows;
}


?>