<?php
require("Model/pdo.php");

$nom = $_POST['nom'];
$date_naissance = $_POST['date_naissance'];

$resultat = $dbPDO->prepare("INSERT INTO auteur(nom, date_naissance) VALUES ('$nom', '$date_naissance')");
$resultat ->execute();

if(isset($_POST['nom']) && isset($_POST['date_naissance'])){
    ?>
    <h1>
        <?php
        echo "<br>Auteur".$nom." ajouté ";
        ?>
    </h1>
<?php
}else{
    echo '<br>Erreur dans les données saisies.';
}

    
?>

<a href="index.php">Retour à l'accueil</a>