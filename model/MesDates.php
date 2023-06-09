<?php

namespace model;

class MesDates{

    static public function AgesEnAnnees(string $naissance, string $aujourdhui){
        $origin = date_create($naissance);
        $target = date_create($aujourdhui);
        $interval = date_diff($origin, $target);
        return $interval->format('%Y');

    }

    static public function EnSeconde(string $naissance, string $aujourdhui){
        return $dureeSecondes = strtotime($aujourdhui) - strtotime($naissance);
    }

    // on va calculer le nombre de jours jusqu'à l'anniversaire suivant
    static public function EnJours(string $naissance, string $aujourdhui){
        $origin = date_create($naissance);
        $target = date_create($aujourdhui);
        $interval = date_diff($origin, $target);
        return $interval->format('%a');
    }

}