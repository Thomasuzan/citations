<?php

$title = $author['author'];
$description = 'Une description de la page en 140 caractères';

ob_start();
?>

<style>
    .author-card {
        display: flex;
        flex-direction: column;
        gap: 1.5rem;
    }
    .author-image {
        width: 100%;
        max-width: 350px;
        height: auto;
        max-height: 400px;
        object-fit: cover;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .author-info {
        flex: 1;
    }
    .author-actions {
        margin-top: 1rem;
        display: flex;
        gap: 1rem;
    }
    .author-actions a {
        font-size: 1.2rem;
    }
    @media (min-width: 768px) {
        .author-card {
            flex-direction: row;
            align-items: flex-start;
        }
        .author-image {
            width: 300px;
            flex-shrink: 0;
        }
    }
</style>

<div class="author-card">
    <?php if (!empty($author['src'])): ?>
        <img class="author-image" src="<?= $author['src'] ?>" alt="Photo de <?= htmlspecialchars($author['author']) ?>">
    <?php endif ?>
    
    <div class="author-info">
        <div class="biography"><?= $author['biography'] ?></div>
        <p><strong>Naissance : </strong> <?= $author['naissance_europe'] ?></p>
        <?php if(!is_null($author['deathday'])): ?>
            <p><strong>Décès : </strong> <?= $author['deces_europe'] ?></p>
        <?php endif ?>
        
        <?php if (isset($_SESSION['profile'])): ?>
            <div class="author-actions">
                <a href="index.php?controller=authors&action=updateAuthor&id=<?= $_GET['id'] ?>" title="Modifier" class="btn btn-outline-primary">
                    <i class="bi bi-pen-fill"></i> Modifier
                </a>
                <a href="index.php?controller=authors&action=deleteAuthor&id=<?= $_GET['id'] ?>" title="Supprimer" class="btn btn-outline-danger" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet auteur ?');">
                    <i class="bi bi-trash-fill"></i> Supprimer
                </a>
            </div>
        <?php endif ?>
    </div>
</div>

<?php
$content = ob_get_clean();

require_once ROOT . '/view/layout.view.php';