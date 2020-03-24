use Test;
use IncidenciasTrafico::JSON;

my $data-file = "resources".IO ~~ :d
        ?? "resources/data.json"
        !! "../resources/data.json";

my $dator = IncidenciasTrafico::JSON.new($data-file);
my %data = $dator.load;
ok( %data, "Loads data");
is( %data.keys.elems, 5, "Correct number of keys");

done-testing;
