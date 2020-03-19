use IncidenciasTrafico::Incidencia;
unit class IncidenciasTrafico::Zona;

has Str $!nombre is required;
has Array $!incidencias;


submethod BUILD(Str :$!nombre) {}

method nombre(--> Str) {return $!nombre}
method anadir_incidencia(IncidenciasTrafico::Incidencia $incidencia) {$!incidencias.push: $incidencia };
method archivar_incidencia(Int $i) {$!incidencias[$i].cerrar};
method incidencias(--> Array){return $!incidencias};
