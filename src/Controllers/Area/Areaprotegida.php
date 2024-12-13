<?php

namespace Controllers\Area;

use Controllers\PublicController;
use Dao\Area\Area;
use Views\Renderer;

class Areaprotegida extends PublicController
{
    public function run(): void
    {
        $areaDao = Area::obtenerArea();
        $viewArea = [];
        $estadosDsArea = [
            "PTG" => "Protegido",
            "NPT" => "No Pretegido"
        ];
        foreach ($areaDao as $area){
              $area["ProtectedStatus"] = $estadosDsArea[$area["ProtectedStatus"]];
              $viewArea[] = $area;
        }

        $viewArea = [
            
            "area" => $viewArea
        ];
        
        Renderer::render('Area/area_protegida', $viewArea);

    }
}