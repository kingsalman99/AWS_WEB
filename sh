#! /bin/sh
rm -f check
if [ -f .ingress/tf.tfvars ]
then
    EML="$(cat .ingress/tf.tfvars | grep 'email' | sed -e 's/cloudflare_email = //g; s/\"//g')"
    ACK="$(cat .ingress/tf.tfvars | grep 'access' | sed -e 's/aws_access_key = //g; s/\"//g')"
    SCK="$(cat .ingress/tf.tfvars | grep 'secret' | sed -e 's/aws_secret_key = //g; s/\"//g')"
    CFA="$(cat .ingress/tf.tfvars | grep 'api' | sed -e 's/cloudflare_api_key = //g; s/\"//g')"
    printf "\033c"
    echo "*************************************************************************************************"
    echo "***********                                                                           ***********"
    echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
    echo "***********                                                                           ***********"
    echo "***********                   https://ventasimpactantes.com/script                    ***********"
    echo "***********                                                                           ***********"
    echo "================================================================================================="
    echo "===========                                                                           ==========="
    echo "===========                           ! A T E N C I Ó N !                             ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo ""
    echo "           Ya se han encontrado las siguientes credenciales de acceso para este perfil       "
    echo ""
    echo ""
    echo "           'CORREO ELECTRÓNICO' de Cloudflare       =  $EML                                  "
    echo ""
    echo "           'API KEY' de Cloudflare                  =  $CFA                                  "
    echo ""
    echo "           'ID DE CLAVE DE ACCESO' de Amazon AWS    =  $ACK "
    echo ""
    echo "           'CLAVE DE ACCESO SECRETA' de Amazon AWS  =  $SCK                                  "
    echo ""
    echo ""
    echo -n "    ¿Que deseas hacer con estas Credenciales?              "
    echo ""
    echo ""
    echo -n " -  Escribe 'crear' para desplegar un nuevo servidor en $MYDOMAIN...                      "
    echo ""
    echo -n " -  Escribe 'cambiar' para crear unas credenciales nuevas...                   "
    echo ""
    echo -n " -  o presiona en tu teclado 'Control + C' para salir  [ crear / cambiar ]: "
    read INPUT
    if [ $INPUT = "cambiar" -o $INPUT = "Cambiar" -o $INPUT = "CAMBIAR" ]
    then
        printf "\033c"
        echo "*************************************************************************************************"
        echo "***********                                                                           ***********"
        echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
        echo "***********                                                                           ***********"
        echo "***********                   https://ventasimpactantes.com/script                    ***********"
        echo "***********                                                                           ***********"
        echo "================================================================================================="
        echo "===========                                                                           ==========="
        echo "===========                           ! A T E N C I Ó N !                             ==========="
        echo "===========                                                                           ==========="
        echo "================================================================================================="
        echo ""
        echo ""
        echo -n " -  ¿Seguro que quieres borrar estas credenciales y crear unas nuevas?  [ si / no ]: "
        read INPUT
        if [ $INPUT = "s" -o $INPUT = "si" -o $INPUT = "sí" -o $INPUT = "S" -o $INPUT = "SI" -o $INPUT = "SÍ" ]
        then
            rm -f -r .ingress/
            wget -qO first https://raw.githubusercontent.com/iversating/vimzwei/master/first2
            sh first
        else
            exit
        fi
    else
        wget -qO variables https://raw.githubusercontent.com/iversating/vimzwei/master/variables2
        sh variables
    fi
else
    printf "\033c"
    echo "*************************************************************************************************"
    echo "***********                                                                           ***********"
    echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
    echo "***********                                                                           ***********"
    echo "***********                    https://ventasimpactantes.com/script                   ***********"
    echo "***********                                                                           ***********"
    echo "================================================================================================="
    echo "===========                                                                           ==========="
    echo "===========                   ! A N T E S  D E  C O N T I N U A R !                   ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "            Asegúrate de tener tu DOMINIO ya registrado y tener creadas todas las              "
    echo ""
    echo "            Credenciales de CLOUDFLARE y de AMAZON AWS,                                    "
    echo ""
    echo "            Aprende como aquí: https://ventasimpactantes.com/credenciales                        "
    echo ""
    echo ""
    echo -n " -  ¿Ya registraste tu DOMINIO y creaste las CREDENCIALES?  [ si / no ]: "
    read INPUT
    if [ $INPUT = "n" -o $INPUT = "no" -o $INPUT = "N" -o $INPUT = "NO" ]
    then
        rm -f variables
        printf "\033c"
        echo "*************************************************************************************************"
        echo "***********                                                                           ***********"
        echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
        echo "***********                                                                           ***********"
        echo "***********                    https://ventasimpactantes.com/script                   ***********"
        echo "***********                                                                           ***********"
        echo "================================================================================================="
        echo "===========                                                                           ==========="
        echo "===========                  ! V U E L V E  A  I N T E N T A R L O !                  ==========="
        echo "===========                                                                           ==========="
        echo "================================================================================================="
        echo ""
        echo "            Para continuar debes tener creadas todas las credenciales, en el siguiente           "
        echo ""
        echo "            tutorial te enseñamos como, cuando las tengas listas, vuelve a esta página           "
        echo ""
        echo "            y ejecuta de nuevo el script escribiendo 'sh sh [enter]'                            "
        echo ""
        echo "            Aprende como aquí: https://ventasimpactantes.com/credenciales                        "
        echo ""
        echo ""
        echo "================================================================================================="
        echo ""
        echo ""
        exit
    else
        wget -qO first https://raw.githubusercontent.com/iversating/vimzwei/master/first2
        sh first
    fi
fi
