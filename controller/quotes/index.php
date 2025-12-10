<?php

require_once ROOT . '/model/quotes.model.php';

if (isset($_GET['action'])) {

    switch ($_GET['action']) {
        // Actions publiques (lecture seule)
        case 'allQuotes':
        case 'oneQuote':
            $action = $_GET['action'];
            break;
        
        // Actions protégées (CRUD - nécessite connexion)
        case 'createQuote':
        case 'updateQuote':
        case 'deleteQuote':
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
    $action = 'allQuotes';
}

require_once ROOT . '/controller/quotes/' . $action . '.controller.php';