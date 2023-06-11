<?php

namespace model;

use PDO;
use Exception;

class AnniversairesManager{
    private PDO $connexion;

    public function __construct(PDO $c){
        $this->connexion = $c;
    }

    public function getAllAnniversaires(){
        # Chargement des anniversaires
        $request = $this->connexion->query("SELECT * FROM anniversaires ORDER BY date_anniversaire DESC");

        # On transforme les données en tableau associatif lisible par PHP
        return $recup = $request->fetchAll(PDO::FETCH_ASSOC);
    }

    public function addAnniversaire(array $tab){
        # Ajout d'un anniversaire
        $prepare = $this->connexion->prepare("INSERT INTO anniversaires (nom, date_anniversaire) VALUES (:nom, :date_anniversaire)");
        $prepare->bindValue(':nom', $tab['nom'], PDO::PARAM_STR);
        $prepare->bindValue(':date_anniversaire', $tab['date_anniversaire'], PDO::PARAM_STR);

        try {
            $prepare->execute();
            return true;
        } catch (Exception $e) {
            return false;
        }
    }
}