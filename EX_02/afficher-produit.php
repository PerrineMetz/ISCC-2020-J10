<?php
function connect_to_database(){
    $servername = "localhost";
    $username = "root";
    $password = "root";
    $databasename = "BaseTest01";


try { 
    $pdo = new PDO("mysql:hpst=$servername;dbname=$databasename", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo "Connected successfully";
    //on est connectee
    return $pdo;
}   catch (PDOException $e){
        echo "Connection failed: ". $e->getMessage();
    }
}

$pdo = connect_to_database();
$query = $pdo->query("SELECT * FROM masupertable");
$user = $query -> fetch();
var_dump($user);

$users = $pdo -> query("SELECT * FROM masupertable")-> fetchAll();
var_dump($users);
foreach ($users as $user) {
    echo $user ['Nom']. "<br/>";
}