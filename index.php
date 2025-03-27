
<?php
require("Model/pdo.php");

$resultat = $dbPDO->prepare("SELECT * FROM manga ORDER BY annee_publi DESC");
$resultat ->execute();
$manga= $resultat->fetchAll();

?><h1>Top manga : </h1>
<ul>
    <?php
        foreach($manga as $manga) {
            $titre = $manga['titre'];
            ?>
            <li>
                <?php
                echo '<a href="manga.php?id='.$manga['id'].'">'.$titre.'</a>';
                ?>
                <p><?php echo '('.$manga['annee_publi'].')' ?></p>
            </li>
            <?php
        }
    ?>
</ul>
<br>
<form action="addAuthor.php" method="post">
    <h1>Ajout d'un auteur : </h1>
    <br>
    Nom : <input type="text" name="nom" />
    <br>
    Date de naissance : <input type="int" name="date_naissance" />
    <br>
    <input type="submit" value="Valider" />
</form>