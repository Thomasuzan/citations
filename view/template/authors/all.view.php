<?php

$title = 'Liste des auteurs';
$description = '';

ob_start();
?>

<style>
    .card {
        height: 100%;
        display: flex;
        flex-direction: column;
    }
    .card-img-top {
        height: 250px;
        object-fit: cover;
    }
    .card-body {
        flex: 1;
        display: flex;
        flex-direction: column;
    }
    .card-text {
        flex: 1;
    }
    .card-actions {
        margin-top: auto;
    }
</style>

<?php if (isset($_SESSION['profile'])): ?>
    <a href="index.php?controller=authors&action=createAuthor" class="btn btn-primary my-2">Ajouter un auteur</a>
<?php endif ?>

<div class="row g-4">
    <?php foreach ($authors as $author) : ?>
        <div class="col-12 col-sm-6 col-lg-4">
            <div class="card h-100">
                <?php if (!empty($author['src'])): ?>
                    <img class="card-img-top" src="<?= $author['src'] ?>" alt="Photo de <?= htmlspecialchars($author['author']) ?>">
                <?php else: ?>
                    <img class="card-img-top" src="https://via.placeholder.com/300x250?text=No+Image" alt="Pas d'image">
                <?php endif ?>
                <div class="card-body">
                    <h5 class="card-title"><?= $author['author'] ?></h5>
                    <p class="card-text"><?= substr(strip_tags($author['biography'] ?? ''), 0, 120) ?>...</p>
                    <div class="card-actions">
                        <a href="index.php?controller=authors&action=oneAuthor&id=<?= $author['id'] ?>" title="Voir"><i class="bi bi-eye-fill"></i></a>
                        <?php if (isset($_SESSION['profile'])): ?>
                            <a href="index.php?controller=authors&action=updateAuthor&id=<?= $author['id'] ?>" title="Modifier"><i class="bi bi-pencil-square"></i></a>
                            <a href="index.php?controller=authors&action=deleteAuthor&id=<?= $author['id'] ?>" title="Supprimer" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet auteur ?');"><i class="bi bi-trash-fill"></i></a>
                        <?php endif ?>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach ?>
</div>
<?php
$content = ob_get_clean();

require_once ROOT . '/view/layout.view.php';