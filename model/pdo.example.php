<?php

/**
 * Renvoie un objet PDO
 * @param string $dsn destination
 * @param string $user utilisateur de la base de données
 * @param string $password mot de passe de l'utilisateur de la base de données
 * @return PDO l'objet PDO de connexion à la base de données
 */
function getPdo(
    string $dsn = 'mysql:host=VOTRE_SERVEUR;dbname=VOTRE_NOM_BDD',
    string $user = 'VOTRE_UTILISATEUR',
    string $password = 'VOTRE_MOT_DE_PASSE'
): PDO {
    try {
        $db = new PDO($dsn, $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $db;
    } catch (PDOException $e) {
        die('Probleme avec la base de données : ' . $e->getMessage());
    }
}