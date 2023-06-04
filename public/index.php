<?php

# Appel du fichier de configuration
require_once '../config.php';

# on charge nos actions
require_once '../model/MesDates.php';

# connexion
try{
    $connexion = new PDO(DB_TYPE.":host=".DB_HOST.";dbname=".DB_NAME.";port=".DB_PORT.";charset=".DB_CHARSET, DB_LOGIN, DB_PWD);
}catch(Exception $e){
    die($e->getMessage());
} 

# Chargement des anniversaires
$request = $connexion->query("SELECT * FROM anniversaires ORDER BY date_anniversaire DESC");

# On transforme les données en tableau associatif lisible par PHP
$recup = $request->fetchAll(PDO::FETCH_ASSOC);

# Appel de la vue
require_once '../view/accueilView.php';