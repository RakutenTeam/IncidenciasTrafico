use IncidenciasTrafico::Dator;
use IncidenciasTrafico::Incidencia;

#poner la incidencia como un rol y aqui implementarlo para acceder a sus atributos
unit class IncidenciasTrafico::Stored does IncidenciasTrafico::Incidencia;

has IncidenciasTrafico::Dator $!dator;

submethod BUILD(Int :$!cord_x, Int :$!cord_y , TipoIncidencia :$!tipo, IncidenciasTrafico::Dator :$!dator ) {}

submethod TWEAK(){
    my %data = $!dator.load;

    $!descripcion = %data<descripcion>;
    $!activa = %data<activa>.Bool;
}

multi method cerrarIncidencia()
{
    $!activa = False;
    $!dator.update( $!.data()); #asi actualizamos los datos
}