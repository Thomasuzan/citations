<?php

if(!isset($_GET['id'])){
    $_SESSION['msg'] = [
        'code'=> 'warning',
        'text'=> 'L\'auteur est introuvable.'
    ];
    header('Location: index.php?controller=authors');
    exit;
}

if (isset($_POST['author'], $_POST['birthday'], $_POST['deathday'], $_POST['biography'], $_FILES['src'])) {

    // Récupérer l'auteur actuel pour garder l'ancienne image si pas de nouvelle
    $currentAuthor = getOneAuthor($pdo, $_GET['id']);
    
    // Gestion de l'image
    if(!$_FILES['src']['error'] && $_FILES['src']['size'] > 0){
        // Nouvelle image uploadée
        move_uploaded_file($_FILES['src']['tmp_name'], ROOT . '/public/images/authors/' . $_FILES['src']['name']);
        $src = 'public/images/authors/' . $_FILES['src']['name'];
    } else {
        // Garder l'ancienne image
        $src = $currentAuthor['src'];
    }

    if(updateAuthor($pdo, [
        'author'=> $_POST['author'],
        'birthday'=> $_POST['birthday'],
        'deathday'=> (empty($_POST['deathday'])) ? null : $_POST['deathday'],
        'biography'=> (empty($_POST['biography'])) ? null : $_POST['biography'],
        'src'=> $src
    ], $_GET['id'])){
        $_SESSION['msg'] = [
            'code'=> 'success',
            'text'=> 'L\'auteur a été modifié avec succès.'
        ];
    }
    
    header('Location: index.php?controller=authors');
    exit;
}

$author = getOneAuthor($pdo, $_GET['id']);

require_once ROOT . '/view/template/authors/update.view.php';