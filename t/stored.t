use Test;

use IncidenciasTrafico::JSON;
use IncidenciasTrafico::Stored;
use IncidenciasTrafico::Incidencia;

my $tipo = Atasco;
my $activa = True;
my $cord_x = 2;
my $cord_y = 3;
my $test = IncidenciasTrafico::Incidencia.new(:$cord_x,:$cord_y,:descripcion("hola"),:$tipo);
#la misma incidencia que en el archivo data.json

my $data-file = "resources".IO ~~ :d
        ?? "resources/data.json"
        !! "../resources/data.json";

my $dator = IncidenciasTrafico::JSON.new($data-file);
my $stored = IncidenciasTrafico::Stored.new(:$cord_x,:$cord_y,:$tipo,:$dator);
say $stored.data();

is($stored.activo,True,"Correctamente incializado");
$stored.cerrarIncidencia();
is($stored.activo,False,"Correctamente cerrado");



done-testing;
