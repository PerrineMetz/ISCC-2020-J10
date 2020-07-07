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
    return $pdo;
}   catch (PDOException $e){
        echo "Connection failed: ". $e->getMessage();
    }
}

$pdo = connect_to_database();
$products = $pdo->query("SELECT * FROM produit")->fetchAll();

echo '<ul>';
foreach ($products as $product){
    echo '
    <li>'.$product['nom'].'</li>';
}
echo '</ul>';

?>