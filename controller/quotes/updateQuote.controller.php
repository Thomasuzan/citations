<?php

if (!isset($_GET['id'])) {
    throw new Exception('Id inexistant', 125);
}

if (isset($_POST['quote'], $_POST['authors_id'], $_POST['explanation'])) {
    
    $result = updateQuote($pdo, [
        'quote' => $_POST['quote'],
        'authors_id' => ($_POST['authors_id'] == 0) ? null : $_POST['authors_id'],
        'explanation' => (empty($_POST['explanation'])) ? null : $_POST['explanation']
    ], $_GET['id']);

    if ($result['status']) {
        $_SESSION['msg'] = [
            'code' => 'success',
            'text' => 'La citation a été modifiée avec succès.'
        ];
    } else {
        $_SESSION['msg'] = [
            'code' => 'danger',
            'text' => 'La citation n\'a pas pu être modifiée.'
        ];
    }

    header('Location: index.php?controller=quotes');
    exit;
}

// Récupérer la citation à modifier
$quote = getOneQuote($pdo, $_GET['id']);

// Récupérer la liste des auteurs pour le select
require_once ROOT . '/model/authors.model.php';
$authors = getAuthors($pdo);

require_once ROOT . '/view/template/quotes/update.view.php';