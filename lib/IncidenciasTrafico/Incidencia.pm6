
enum TipoIncidencia <Accidente Atasco Obras CarreteraCortada>;


unit class IncidenciasTrafico::Incidencia;


has Int $!cord_x is required;
has Int $!cord_y is required;
has Str $!descripcion;
has TipoIncidencia $!tipo is required;
has Bool $!activa;

submethod BUILD(Int :$!cord_x, Int :$!cord_y , Str :$!descripcion, TipoIncidencia :$!tipo, Bool :$!activa = True ) {}

method cerrar(){$!activa = False}
method cord_x(--> Int) {$!cord_x}
method cord_y(--> Int) {$!cord_y}
method descripcion(--> Str) {$!descripcion}
method tipo(--> TipoIncidencia) {$!tipo}
method activo(--> Bool) {$!activa}

