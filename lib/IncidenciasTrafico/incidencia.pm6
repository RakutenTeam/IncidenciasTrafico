unit class IncidenciasTrafico::Incidencia;

class incidencia {
    has Rat $!ubicacion;
    has Str $!descripcion;
    has Str $!tipo;
    has Bool $!activo;


    method new($ubicacion, $descripcion, $tipo) {
        self.bless(:$ubicacion, :$descripcion, :$tipo);
        $!activo = True;

        if $!tipo = Any {
            X::IncidenciasTrafico::NoTipo.new.throw
        }
    }



    method ubicacion(--> Int) {return $!ubicacion}
    method descripcion(--> Str) {return $!descripcion}
    method tipo(--> Str) {return $!tipo}
    method activo(--> Bool) {return $!activo}
}
