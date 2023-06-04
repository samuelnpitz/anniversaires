<?php

# Appel du fichier de configuration
require_once '../config.php';

# on active l'autoload
// Autoload de classes (qui portent le même nom que le fichier) ! Gestion des namespaces
spl_autoload_register(function ($className) {
    // par exemple si on est dans le dossier public, le str_replace va remplacer les \ des namespaces par des / et on
    // aura par exemple ../model/Entity.php
    $file = '../' . str_replace('\\', '/', $className) . '.php';
    // si le fichier existe, on le charge
    if (file_exists($file)) {
        require_once $file;
    }
});

# connexion
try{
    $connexion = new PDO(DB_TYPE.":host=".DB_HOST.";dbname=".DB_NAME.";port=".DB_PORT.";charset=".DB_CHARSET, DB_LOGIN, DB_PWD);
}catch(Exception $e){
    die($e->getMessage());
} 

$anniversairesManager = new model\AnniversairesManager($connexion);

$recup = $anniversairesManager->getAllAnniversaires();


# Appel de la vue
require_once '../view/accueilView.php';