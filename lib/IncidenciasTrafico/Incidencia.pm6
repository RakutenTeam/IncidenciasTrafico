
enum TipoIncidencia <Accidente Atasco Obras CarreteraCortada>;



unit class IncidenciasTrafico::Incidencia;


has Int $!ubicacion is required;
has Str $!descripcion;
has TipoIncidencia $!tipo is required;
has Bool $!activa;

submethod BUILD(Int :$!ubicacion , Str :$!descripcion, TipoIncidencia :$!tipo, Bool :$!activa = True ) {}

method cerrar(){$!activa = False}
method ubicacion(--> Int) {return $!ubicacion}
method descripcion(--> Str) {return $!descripcion}
method tipo(--> TipoIncidencia) {return $!tipo}
method activo(--> Bool) {return $!activa}

