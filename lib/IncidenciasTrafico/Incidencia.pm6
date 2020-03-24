
enum TipoIncidencia <Accidente Atasco Obras CarreteraCortada>;


unit role IncidenciasTrafico::Incidencia;


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
method tipo(--> TipoIncidencia) {return $!tipo}
method activo(--> Bool) {$!activa}

method data(){
    #haria falta ponerle un .Str??
    #esto falla
    return{
            tipo => $!tipo.Str,
            cord_x => $!cord_x.Str,
            cord_y => $!cord_y.Str,
            activa => $!activa.Str,
            descripcion => $!descripcion
    };
}