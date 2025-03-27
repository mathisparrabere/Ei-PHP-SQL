<?php require("Model/pdo.php"); ?>

<?php 
    $id = $_GET['id'];

    $resultat = $dbPDO->prepare("SELECT * FROM manga WHERE id = $id");
    $resultat ->execute();
    $manga= $resultat->fetchAll();

    $resultat = $dbPDO->prepare("SELECT * FROM auteur WHERE id_manga = $id");
    $resultat ->execute();
    $auteur= $resultat->fetchAll();

    $resultat = $dbPDO->prepare("SELECT * FROM personnage WHERE id_manga = $id");
    $resultat ->execute();
    $perso= $resultat->fetchAll();
?>

<?php
foreach ($manga as $manga){
    ?>
    <h1>
        <?php echo $manga['titre'];?>
    </h1>
    
    <?php

    foreach ($auteur as $auteur){
        ?>
        <p>
            <?php echo $auteur['nom'];?>
        

        <?php
    }
        echo ' - '.$manga['annee_publi'].'<br><br>'.$manga['description'];
    ?>
    </p>

    <h2> Personnages : </h2>
    <ul>
        <?php
        foreach($perso as $perso) {
            $nom_perso = $perso['nom'];
            ?>
            <li>
                <a href="perso.php"><?php echo $nom_perso; ?></a>
            </li>
            <?php
        } ?>
    </li>
    </ul>
<?php
}
?>