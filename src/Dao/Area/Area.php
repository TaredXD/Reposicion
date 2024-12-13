<?php

namespace Dao\Area;

use Dao\Table;

class Area extends table{
        public static function obtenerArea(){
            $sqlstr = 'Select * From protectedareas;';
            $areas = self::obtenerArea($sqlstr, [], );
            return $areas;
        }
      

}