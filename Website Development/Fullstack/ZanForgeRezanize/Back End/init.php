<?php
$server_credential = getopt("h:u:p");

function PDOSQLConnect($server_credential){
    try {
        $pdo = new PDO(
            "mysql:host={$server_credential['h']}",
            $server_credential["u"],
            $server_credential["p"],
        );

        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Server connected\n";
        return $pdo;
    } catch (PDOException $e) {
        echo "Server connection could not established!\n".$e->getMessage();
    }
}

if( isset($server_credential["h"]) && isset($server_credential["u"]) ){
    $pdo = PDOSQLConnect($server_credential);

    if($pdo){
        try {
            $sql="CREATE DATABASE zanforgerezanize";
            $pdo->exec($sql);
            echo "Database Created Successfully!\n";
        } catch (PDOException $e) {
            echo "Database query fail!\n".$e->getMessage();
        }
    }else{
        echo "Server connection could not established!\n";
    }

}else{
    $server_credential = [
        "h" => readline("Server Host: "),
        "u" => readline("Username: "),
        "p" => readline("Password: ")
    ];
    $pdo = PDOSQLConnect($server_credential);
    
    if($pdo){
        try {
            $sql="CREATE DATABASE zanforgerezanize";
            $pdo->exec($sql);
            echo "Database Created Successfully!\n";
        } catch (PDOException $e) {
            echo "Database query fail!\n".$e->getMessage();
        }
    }else{
        echo "Server connection could not established!\n";
    }
}