<?php

$title = 'Modifier une citation';
$description = 'Modification d\'une citation';
ob_start();
?>

<form action="index.php?controller=quotes&action=updateQuote&id=<?= $_GET['id'] ?>" method="post">
    <div class="mb-3">
        <label for="quote" class="form-label">La citation</label><br>
        <input type="text" class="form-control" id="quote" name="quote" value="<?= htmlspecialchars($quote['quote']) ?>">
    </div>
    <div class="mb-3">
        <label for="authors_id" class="form-label">Auteur</label><br>
        <select id="authors_id" name="authors_id" class="form-select">
            <option value="0">Anonyme</option>
            <?php foreach($authors as $author): ?>
                <option value="<?= $author['id'] ?>" <?= ($quote['authors_id'] == $author['id']) ? 'selected' : '' ?>><?= $author['author'] ?></option>
            <?php endforeach ?>
        </select>
    </div>
    <div class="mb-3">
        <label for="explanation" class="form-label">Explication</label><br>
        <textarea id="explanation" name="explanation" class="form-control" rows="5"><?= $quote['explanation'] ?></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Modifier</button>
    <a href="index.php?controller=quotes" class="btn btn-secondary">Annuler</a>
</form>

<?php
$content = ob_get_clean();
require_once ROOT . '/view/layout.view.php';