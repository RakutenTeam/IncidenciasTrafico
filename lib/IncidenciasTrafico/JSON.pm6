use JSON::Fast;
use IncidenciasTrafico::Dator;

unit class IncidenciasTrafico::JSON does IncidenciasTrafico::Dator;

has $!file-name;
has $!data;

method new( $file-name where $file-name.IO ~~ :e ){
    return self.bless( :$file-name, data => from-json slurp $file-name );
}

submethod BUILD( :$file-name, :$!data){ }

method load(){ $!data }
method update(\data) { $!data = data }