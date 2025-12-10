<?php

$title = $author['author'];
$description = 'Une description de la page en 140 caractères';

ob_start();
?>

<?php if (!empty($author['src'])): ?>
    <img src="<?= $author['src'] ?>" alt="Photo de <?= htmlspecialchars($author['author']) ?>">
<?php endif ?>

<p><?= $author['biography'] ?></p>
<p><strong>Naissance : </strong> <?= $author['naissance_europe'] ?></p>
<?php if(!is_null($author['deathday'])): ?>
    <p><strong>Décès : </strong> <?= $author['deces_europe'] ?></p>
<?php endif ?>

<?php if (isset($_SESSION['profile'])): ?>
    <a href="index.php?controller=authors&action=updateAuthor&id=<?= $_GET['id'] ?>" title="Modifier"><i class="bi bi-pen-fill"></i></a>
    <a href="index.php?controller=authors&action=deleteAuthor&id=<?= $_GET['id'] ?>" title="Supprimer" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet auteur ?');"><i class="bi bi-trash-fill"></i></a>
<?php endif ?>

<?php
$content = ob_get_clean();

require_once ROOT . '/view/layout.view.php';