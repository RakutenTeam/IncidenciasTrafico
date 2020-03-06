unit class IncidenciasTrafico::Usuario;

role usuario{
    has Int $!id;
    #has Str $!plataforma;

    #el constructor inicializa el id de forma única uuid
    method new() {
        
    }

    method ver_incidencia {

    }

    method reportar_fin_incidencia {

    }

    multi registrarse {

    }

    multi registrarse($codigo_autorizado --> Int) {

    }

    method iniciar_sesion {

    }
}