use IncidenciasTrafico::Zona;
use IncidenciasTrafico::Incidencia;
use Test;

my $tipo = Atasco;
my $cord_x = 2;
my $cord_y = 3;
my $incidencia = IncidenciasTrafico::Incidencia.new(:$cord_x,:$cord_y,:descripcion("hola"),:$tipo);

my $test = IncidenciasTrafico::Zona.new(:nombre("prueba"));
ok $test.anadir_incidencia($incidencia);
ok $test.nombre, "nombre";
ok $test.incidencias[2;3], $tipo;

#test de integracion incidencia
#isa-ok($test.incidencias[2;3],IncidenciasTrafico::Incidencia,"Es de tipo incidencia");
isa-ok($test.archivar_incidencia(2,3), False, "Archivada de forma correcta");
#false = archivada


done-testing;
