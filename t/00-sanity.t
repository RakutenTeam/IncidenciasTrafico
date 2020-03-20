use IncidenciasTrafico::Usuario;
use IncidenciasTrafico::Incidencia;
use IncidenciasTrafico::NoTipo;

use Test;

my $tipo = Atasco;
my $cord_x = 2;
my $cord_y = 3;
my $test = IncidenciasTrafico::Incidencia.new(:$cord_x,:$cord_y,:descripcion("hola"),:$tipo);

is($test.cord_x, $cord_x, "Construccion ubicacion correcta");
is($test.cord_y, $cord_y, "Construccion ubicacion correcta");

$test.cerrar;
is($test.activo, False, "Cerrada de forma correcta");

ok $test.descripcion, "Descripcion";
ok $test.tipo, "Tipo";

#a la izquierda es la condición y derecha descripcion

done-testing;
