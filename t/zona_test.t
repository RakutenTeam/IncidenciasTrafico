use IncidenciasTrafico::Zona;
use IncidenciasTrafico::Incidencia;

my $tipo = Atasco;
my $ubicacion = 2;
my $numero = 0;
my $incidencia = IncidenciasTrafico::Incidencia.new(:$ubicacion,:descripcion("hola"),:$tipo);

my $test = IncidenciasTrafico::Zona.new(:nombre("prueba"));
ok $test.anadir_incidencia($incidencia);
ok $test.nombre, "nombre";
ok $test.incidencias[0].descripcion, "descripcion";

is($test.archivar_incidencia(0), False, "Archivada de forma correcta");
#false = archivada

use Test;

done-testing;
