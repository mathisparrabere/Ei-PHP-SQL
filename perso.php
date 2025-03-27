<?php
require("Model/pdo.php");

$id = $_GET['id'];

$resultat = $dbPDO->prepare("SELECT * FROM personnage WHERE id = $id");
$resultat ->execute();
$perso= $resultat->fetchAll();

foreach($perso as $perso){
    ?>
    <h1>
        <?php echo $perso['nom'];?>
    </h1>
    <p>
        <?php echo $perso['description'];?>
    </p>
    <a href="index.php">Retour à l'accueil</a>
    <?php
}
?>