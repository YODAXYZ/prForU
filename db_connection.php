<?php
$host = "localhost";
$userName = "root";
$password = "Trezvonnozvon=2015";
$dbName = "city_info";

try {
    $pdoConnection = new PDO("mysql:host=$host; dbname=$dbName", "$userName", "$password");
} catch (PDOException $exc) {
    echo $exc->getMessage();
    exit();
}
?>