<?php
/**
 * Front Controller - Point d'entrée de l'application Citations
 * Gère le routing vers les différents contrôleurs
 * 
 * Mode public : lecture autorisée pour tous
 * Mode connecté : CRUD complet
 */

// Démarrage de la session
session_start();

// Définition de la racine du projet
define('ROOT', __DIR__);

// Récupération du contrôleur demandé (par défaut: authors)
$controller = $_GET['controller'] ?? 'authors';

// Routing vers le bon contrôleur
switch ($controller) {
    case 'quotes':
        require ROOT . '/controller/quotes/index.php';
        break;
    
    case 'authors':
        require ROOT . '/controller/authors/index.php';
        break;
    
    case 'users':
        // Section users réservée aux connectés
        if (!isset($_SESSION['profile'])) {
            $_SESSION['msg'] = [
                'code' => 'warning',
                'text' => 'Vous devez être connecté pour accéder à cette section.'
            ];
            header('Location: index.php?controller=authentification');
            exit;
        }
        require ROOT . '/controller/users/index.php';
        break;
    
    case 'profile':
        // Profil réservé aux connectés
        if (!isset($_SESSION['profile'])) {
            header('Location: index.php?controller=authentification');
            exit;
        }
        require ROOT . '/controller/profile/index.php';
        break;
    
    case 'authentification':
        require ROOT . '/controller/authentification/index.php';
        break;
    
    case '404':
    default:
        // Page 404 pour les contrôleurs inexistants
        $title = 'Erreur 404';
        $description = 'Page non trouvée';
        require ROOT . '/view/template/404.view.php';
        break;
}