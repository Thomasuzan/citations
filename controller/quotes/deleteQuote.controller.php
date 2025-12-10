<?php

if (!isset($_GET['id'])) {
    throw new Exception('Id inexistant', 125);
}

if (deleteQuote($pdo, $_GET['id'])) {
    $_SESSION['msg'] = [
        'code' => 'success',
        'text' => 'La citation a bien été supprimée.'
    ];
} else {
    $_SESSION['msg'] = [
        'code' => 'danger',
        'text' => 'La citation n\'a pas pu être supprimée.'
    ];
}

header('Location: index.php?controller=quotes');
exit;