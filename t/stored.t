use Test;

use IncidenciasTrafico::JSON;
use IncidenciasTrafico::Stored;
use IncidenciasTrafico::Incidencia;

my $tipo = Atasco;
my $cord_x = 2;
my $cord_y = 3;
my $test = IncidenciasTrafico::Incidencia.new(:$cord_x,:$cord_y,:descripcion("hola"),:$tipo);
#la misma incidencia que en el archivo data.json

my $data-file = "resources".IO ~~ :d
        ?? "resources/data.json"
        !! "../resources/data.json";

my $dator = IncidenciasTrafico::JSON.new($data-file);
my $stored = IncidenciasTrafico::Stored.new($dator);
say $stored.data();
#ese data tiene que tener el mismo formato que el data.json que he creado manualmente

#lo unico que habria que hacer de aqui de test sería comprobar con is que la incidencia
#tiene el activa a true y que luego al llamar a stored.cerrar, el activa se pone a false

is($stored.activo,True,"Correctamente incializado");
$stored.cerraIncidencia();
is($stored.activo,False,"Correctamente cerrado");



done-testing;
