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
}