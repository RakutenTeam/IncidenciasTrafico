use IncidenciasTrafico::Incidencia;
use IncidenciasTrafico::NoTipo;
use JSON::Fast;

use Test;

my $tipo = Atasco;
my $cord_x = 2;
my $cord_y = 3;
my $test = IncidenciasTrafico::Incidencia.new(:$cord_x,:$cord_y,:descripcion("hola"),:$tipo);

is($test.cord_x, $cord_x, "Construccion ubicacion correcta");
is($test.cord_y, $cord_y, "Construccion ubicacion correcta");
#a la izquierda es la condición y derecha descripcion

is($test.tipo, $tipo, "Construccion tipo correct0");

$test.cerrar;
is($test.activo, False, "Cerrada de forma correcta");

ok $test.descripcion, "Descripcion";

my $data = $test.data;
say to-json $data;

done-testing;
