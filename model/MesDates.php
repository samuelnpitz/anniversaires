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

}