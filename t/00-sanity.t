use IncidenciasTrafico::Usuario;
use IncidenciasTrafico::Incidencia;
use IncidenciasTrafico::NoTipo;
use Test;

my $tipo = Atasco;
my $test = IncidenciasTrafico::Incidencia.new(2,"hola",:$tipo);

say "ubicacion: ";
say $test.ubicacion;
say "descripcion: ";
say $test.descripcion;

done-testing;
