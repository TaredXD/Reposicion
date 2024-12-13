<?php

namespace Controllers\Area;

use Controllers\PublicController;
use Views\Renderer;

class AreaForm extends PublicController{
    private $viewData = [];
    
    private $modeDscArr = [
          "INS" => "Crear nueva Area",
          "UPD" => "Editando %s (%s)",
          "DSP" => "Detalle de %s (%s)",
          "DEL" => "Editando %s (%s)"
    ];
    public function run():void{
        Renderer::render('Area/area_form', $this->$viewData);
    }

}