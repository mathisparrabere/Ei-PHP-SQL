
<?php
require("Model/pdo.php");

$resultat = $dbPDO->prepare("SELECT * FROM manga ORDER BY annee_publi DESC");
$resultat ->execute();
$manga= $resultat->fetchAll();

?><h1>Top manga : </h1>
<ul>
    <?php
        foreach($manga as $manga) {
            ?>
            <li>
                <a href=""><?php echo $manga['titre'] ?></a>
                <p><?php echo '('.$manga['annee_publi'].')' ?></p>
            </li>
            <?php
        }
    ?>
</ul>