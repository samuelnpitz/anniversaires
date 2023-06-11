<?php
namespace model;

use PDO;
use Exception;

class UtilisateurManager{
    private PDO $connexion;

    public function __construct(PDO $c){
        $this->connexion = $c;
    }

    public function connect(array $tab){
        
        # Chargement des anniversaires
        $prepare = $this->connexion->prepare("SELECT * FROM utilisateur WHERE username = :username AND userpwd = :userpwd");
        $prepare->bindValue(':username', $tab['username'], PDO::PARAM_STR);
        $prepare->bindValue(':userpwd', $tab['userpwd'], PDO::PARAM_STR);

        try {
            $prepare->execute();
            if($prepare->rowCount() == 0){
                return false;
            }
            $_SESSION['idsession'] = session_id();
            $_SESSION['username'] = $tab['username'];
            $_SESSION['usersurname'] = $tab['usersurname'];
            return true;
        } catch (Exception $e) {
            return false;
        }

    }

}