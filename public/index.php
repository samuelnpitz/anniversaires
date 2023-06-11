<?php
# session_start();
session_start();

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
$utilisateurManager = new model\UtilisateurManager($connexion);

$recup = $anniversairesManager->getAllAnniversaires();

if(isset($_SESSION['idsession']) && $_SESSION['idsession'] == session_id()){

    if(isset($_GET['disconnect'])){
        session_destroy();
        header('Location: ./');
        exit();
    }

    if(isset($_POST['nom'], $_POST['date_anniversaire'])){
        if($anniversairesManager->addAnniversaire($_POST)){
            header('Location: ./');
            exit();
        }else{
            $erreur = "Erreur d'ajout";
        }
    }

    require_once "../view/addView.php";

}elseif(isset($_GET['connect'])){

    if(isset($_POST['username'], $_POST['userpwd'])){
        if($utilisateurManager->connect($_POST)){
            header('Location: ./');
            exit();
        }else{
            $erreur = "Erreur d'authentification";
        }
    }
    # Appel de la vue
    require_once '../view/loginView.php';

}else{

    # Appel de la vue
    require_once '../view/accueilView.php';
}