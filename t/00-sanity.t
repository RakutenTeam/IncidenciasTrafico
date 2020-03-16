use IncidenciasTrafico::Usuario;
use IncidenciasTrafico::Incidencia;
use IncidenciasTrafico::NoTipo;
use Test;

my $tipo = Atasco;
my $ubicacion = 2;
my $test = IncidenciasTrafico::Incidencia.new(:$ubicacion,:descripcion("hola"),:$tipo);

is($test.ubicacion, $ubicacion, "Construccion ubicacion correcta");
$test.cerrar;
is($test.activo, False, "Cerrada de forma correcta");

ok $test.ubicacion, "Ubicación";
ok $test.descripcion, "Descripcion";
ok $test.tipo, "Tipo";

#ok $test.activo, "Activa";
#ok !$test.cerrar, "Cerrar";



#a la izquierda es la condición y derecha descripcion

done-testing;
