<?php

/**
 * Description of Expresion
 * https://github.com/felipebz/calculadora-logica
 * https://es.wikipedia.org/wiki/Notaci%C3%B3n_polaca_inversa
 *
 * @author Julian Gonzalez Prieto (Avuuna, la Luz del Alba).
 */
class Expresion {

    public static $not = "0";
    public static $and = "1";
    public static $or = "2";
    public static $impl = "3";
    public static $equiv = "4";
    public $expresion;
    public $segmentos;
    private $fila, $pila;

    public function Expresion($expresion = null) {
        $this->expresion = $expresion;
    }

    public function ejecutar() {
        $this->segmentos = $this->fragmentar();
        $this->separar();
        $this->resolver();
    }

    private function valide($pattern, $formula) {
        $parentesis = 0;
        $expresion = trim(str_replace(" ", "", $formula));
        $expresion = self::replace($expresion);
        $expresion = strtoupper($expresion);
        $expresion = self::replaceBack($expresion);
        for ($i = 0; $i < strlen($expresion); $i++) {
            if ($expresion{$i} == Operaciones::$parenOp) {
                $parentesis++;
            }
            if ($expresion{$i} == Operaciones::$parenCl) {
                $parentesis--;
            }
        }
        if ($parentesis == 0) {
            if (preg_match($pattern, $expresion)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public function validar($formula) {
        $not = Operaciones::$not;
        $and = Operaciones::$and;
        $or = Operaciones::$or;
        $impl = Operaciones::$impl;
        $equiv = Operaciones::$equiv;
        $parenOp = Operaciones::$parenOp;
        $parenCl = Operaciones::$parenCl;
        $false = Operaciones::$false;
        $true = Operaciones::$true;
        $pattern = "/^($not*[$parenOp]*?|([$false$true]|[$parenOp]*[$not]*?[$false$true])[$parenCl]*?($or|$and|$impl|$equiv)[$parenOp]?[$not]?[$parenOp]?)*($false|$true|[$false$true][$parenCl]*)$/";
        return $this->valide($pattern, $formula);
    }

    public function validarConSimbolos($formula) {
        $not = Operaciones::$not;
        $and = Operaciones::$and;
        $or = Operaciones::$or;
        $impl = Operaciones::$impl;
        $equiv = Operaciones::$equiv;
        $parenOp = Operaciones::$parenOp;
        $parenCl = Operaciones::$parenCl;
        $false = Operaciones::$false;
        $true = Operaciones::$true;
        $letras = "ABCDEpqrstuvxyz";
        $letra = "A|B|C|D|E|p|q|r|s|t|u|v|x|y|z";
        $pattern = "/^($not*[$parenOp]*?|([$false$true$letras]|[$parenOp]*[$not]*?[$false$true$letras])[$parenCl]*?($or|$and|$impl|$equiv)[$parenOp]?[$not]?[$parenOp]?)*($false|$true|$letra|[$false$true$letras][$parenCl]*)$/";
        return $this->valide($pattern, $formula);
    }

    public static function replace($expresion) {
        return str_replace(Operaciones::$not, self::$not, str_replace(Operaciones::$and, self::$and, str_replace(Operaciones::$or, self::$or, str_replace(Operaciones::$impl, self::$impl, str_replace(Operaciones::$equiv, self::$equiv, $expresion)))));
    }

    public static function replaceBack($expresion) {
        return str_replace(self::$not, Operaciones::$not, str_replace(self::$and, Operaciones::$and, str_replace(self::$or, Operaciones::$or, str_replace(self::$impl, Operaciones::$impl, str_replace(self::$equiv, Operaciones::$equiv, $expresion)))));
    }

    private function fragmentar() {
        $expresion = str_replace("", " ", str_replace(" ", "", $this->expresion));
        $expresion = self::replace($expresion);
        $expresion = strtoupper(trim($expresion));
        return explode(" ", $expresion)[0];
    }

    private function esMasImportante($valor, $topePila) {
        $precedencia = Operaciones::$not . Operaciones::$or . Operaciones::$and . Operaciones::$impl . Operaciones::$equiv;
        $precedencia = self::replace($precedencia);
        $tp = self::replace($topePila);
        $val = self::replace($valor);
        if ($tp == Operaciones::$parenOp) {
            return false;
        }
        if (strpos($precedencia, $tp) === false) {
            return false;
        }
        if (strpos($precedencia, $val) === false) {
            return false;
        }
        if (strpos($precedencia, $tp) >= strpos($precedencia, $val)) {
            return false;
        }
        return true;
    }

    private function separar() {
        $fila = new Fila();
        $pila = new Pila();
        for ($i = 0; $i < strlen($this->segmentos); $i++) {
            $elem = $this->segmentos{$i};
            if (preg_match("[" . Operaciones::$false . "|" . Operaciones::$true . "]", $elem)) {
                $fila->add($elem);
            } else if ($elem == Operaciones::$not || $elem == Operaciones::$parenOp) {
                $pila->add($elem);
            } else if ($elem == Operaciones::$parenCl) {
                while ($pila->getEnd() != Operaciones::$parenOp) {
                    $fila->add($pila->remove());
                }
                $pila->remove();
            } else {
                if (!$pila->isEmpty()) {
                    if ($this->esMasImportante($elem, (string) $pila->getEnd())) {
                        $fila->add($pila->remove());
                    }
                }
                $pila->add($elem);
            }
        }
        while (!$pila->isEmpty()) {
            $fila->add($pila->remove());
        }
        $this->fila = $fila;
        $this->pila = $pila;
    }

    private function resolver() {
        $fila = $this->fila;
        $pila = $this->pila;
        while (!$fila->isEmpty()) {
            $x = self::replaceBack($fila->remove());
            if ($x == Operaciones::$true || $x == Operaciones::$false) {
                $pila->add($x);
            } else {
                switch ($x) {
                    case Operaciones::$and:
                        $p = $pila->remove();
                        $q = $pila->remove();
                        $pila->add(Operaciones::funcAnd($q, $p));
                        break;
                    case Operaciones::$or:
                        $p = $pila->remove();
                        $q = $pila->remove();
                        $pila->add(Operaciones::funcOr($q, $p));
                        break;
                    case Operaciones::$not:
                        $p = $pila->remove();
                        $pila->add(Operaciones::funcNot($p));
                        break;
                    case Operaciones::$impl:
                        $p = $pila->remove();
                        $q = $pila->remove();
                        $pila->add(Operaciones::funcImpl($q, $p));
                        break;
                    case Operaciones::$equiv:
                        $p = $pila->remove();
                        $q = $pila->remove();
                        $pila->add(Operaciones::funcEquiv($q, $p));
                        break;
                }
            }
        }
        $this->fila = $fila;
        $this->pila = $pila;
    }

    public function __toString() {
        return (string) $this->pila;
    }

}
