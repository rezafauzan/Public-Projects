<?php
session_start();

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

$database_credentials = [
    "host" => "localhost",
    "dbname" => "portfolio",
    "username" => "root",
    "password" => "",
];

function connectDB($database_credentials)
{
    try {
        $dsn = "mysql:host=" . $database_credentials['host'] . ";dbname=" . $database_credentials['dbname'];
        $db = new PDO($dsn, $database_credentials['username'], $database_credentials['password']);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $db;
    } catch (PDOException $e) {
        return $_SESSION["error_message"] = "<p>Database Connection Fail! Please give me a notice from contact form thank you very much</p>" . $e->getMessage();
    }
}

function fetch($column, $table, $method = 1)
{
    global $database_credentials;
    $db = connectDB($database_credentials);
    try {
        $sql = "SELECT {$column} FROM . {$table}";
        $stmt = $db->prepare($sql);
        $stmt->execute();

        switch ($method) {
            case 1:
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                break;

            case 2:
                $rows = $stmt->fetchAll(PDO::FETCH_NUM);
                break;

            case 3:
                $rows = $stmt->fetchAll(PDO::FETCH_BOTH);
                break;

            case 4:
                $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
                break;

            default:
                echo "Wrong Method";
                break;
        }

        return $rows;
    } catch (\PDOException $e) {
        return $_SESSION["error_message"] = "<p>Fetch Data Fail! Please give me a notice from contact form thank you very much</p>" . $e->getMessage();
    }
}

function fetchleftjoined($columnTableA = [], $columnTableB = [], $tableA, $tableB, $fk, $rk, $method = 1)
{
    global $database_credentials;
    $db = connectDB($database_credentials);
    try {

        $column_list = [];

        foreach ($columnTableA as $cta) {
            $column_list[] = $tableA . "." . $cta;
        }

        foreach ($columnTableB as $ctb) {
            $column_list[] = $tableB . "." . $ctb;
        }

        $column_list = implode(',', $column_list);

        $sql = "
        SELECT
            {$column_list}
        FROM                                                  
            {$tableA}                                           
        LEFT JOIN                                             
            {$tableB}                                           
        ON                                                    
            {$tableA}.{$fk} = {$tableB}.{$rk};
        ";
        $stmt = $db->prepare($sql);
        $stmt->execute();

        switch ($method) {
            case 1:
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                break;

            case 2:
                $rows = $stmt->fetchAll(PDO::FETCH_NUM);
                break;

            case 3:
                $rows = $stmt->fetchAll(PDO::FETCH_BOTH);
                break;

            case 4:
                $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
                break;

            default:
                echo "Wrong Method";
                break;
        }

        return $rows;
    } catch (\PDOException $e) {
        return $_SESSION["error_message"] = "<p>Fetch Data Fail! Please give me a notice from contact form thank you very much</p>" . $e->getMessage();
    }
}
