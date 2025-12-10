<?php

$title = 'Liste des citations';
$description = 'Une description de la page en 150 caractères';
ob_start();
?>

<?php if (isset($_SESSION['profile'])): ?>
    <a href="index.php?controller=quotes&action=createQuote" class="btn btn-primary my-2">Ajouter une citation</a>
<?php endif ?>

<?php foreach($quotes as $quote): ?>
<div class="quote my-3">
    <q><?= $quote['quote'] ?></q>
    <cite><?= $quote['author'] ?></cite>
    <div class="actions">
        <a href="index.php?controller=quotes&action=oneQuote&id=<?= $quote['id_quotes'] ?>">Voir</a>
        <?php if (isset($_SESSION['profile'])): ?>
            <a href="index.php?controller=quotes&action=updateQuote&id=<?= $quote['id_quotes'] ?>">Modifier</a>
            <a href="index.php?controller=quotes&action=deleteQuote&id=<?= $quote['id_quotes'] ?>" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cette citation ?');">Supprimer</a>
        <?php endif ?>
    </div>
</div>
<?php endforeach ?> 

<?php
$content = ob_get_clean();
require ROOT . '/view/layout.view.php';