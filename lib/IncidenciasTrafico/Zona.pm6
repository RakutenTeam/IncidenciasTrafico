unit class IncidenciasTrafico::Zona;
use IncidenciasTrafico::Incidencia;
#use Array::Shaped::Console;

has Str $!nombre is required;
has IncidenciasTrafico::Incidencia @!incidencias[4;4];


submethod BUILD(Str :$!nombre) {}

method nombre(--> Str) {$!nombre}
method anadir_incidencia(IncidenciasTrafico::Incidencia $incidencia) {@!incidencias[$incidencia.cord_x;$incidencia.cord_y] = $incidencia };
method archivar_incidencia(Int $i, Int $j) {@!incidencias[$i;$j].cerrar};
method incidencias(--> Array){ @!incidencias};