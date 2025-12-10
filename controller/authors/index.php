<?php

require_once ROOT . '/model/authors.model.php';

if (isset($_GET['action'])) {

    switch ($_GET['action']) {
        // Actions publiques (lecture seule)
        case 'allAuthors':
        case 'oneAuthor':
            $action = $_GET['action'];
            break;
        
        // Actions protégées (CRUD - nécessite connexion)
        case 'createAuthor':
        case 'updateAuthor':
        case 'deleteAuthor':
            if (!isset($_SESSION['profile'])) {
                $_SESSION['msg'] = [
                    'code' => 'warning',
                    'text' => 'Vous devez être connecté pour effectuer cette action.'
                ];
                header('Location: index.php?controller=authentification');
                exit;
            }
            $action = $_GET['action'];
            break;
        
        default:
            header('Location: index.php?controller=404');
            exit;
    }
} else {
    $action = 'allAuthors';
}

require_once ROOT . '/controller/authors/' . $action . '.controller.php';