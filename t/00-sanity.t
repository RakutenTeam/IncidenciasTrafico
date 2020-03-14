use IncidenciasTrafico::Usuario;
use IncidenciasTrafico::Incidencia;
use IncidenciasTrafico::NoTipo;
use Test;

my $tipo = Atasco;
my $test = IncidenciasTrafico::Incidencia.new(:2ubicacion,:description("hola"),:$tipo);

ok $test.ubicacion, "Ubicación";

ok $test.descripcion "Descripcion";

done-testing;
