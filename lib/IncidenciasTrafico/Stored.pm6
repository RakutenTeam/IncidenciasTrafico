use IncidenciasTrafico::Dator;
use IncidenciasTrafico::Incidencia;

#poner la incidencia como un rol y aqui implementarlo para acceder a sus atributos
unit class IncidenciasTrafico::Stored does IncidenciasTrafico::Incidencia;

has IncidenciasTrafico::Dator $!dator;

method new( IncidenciasTrafico::Dator $dator){

    my %data = $dator.load;

    my $!cord_x = %data<cord_x>;
    my $!cord_y = %data<cord_y>;
    my $!descripcion = %data<descripcion>;
    my $!tipo = %data<tipo>;
    my $!activa = %data<activa>;


}

multi method cerrarIncidencia()
{
    $!activa = False;
    $!dator.update( $!.data()); #asi actualizamos los datos
}