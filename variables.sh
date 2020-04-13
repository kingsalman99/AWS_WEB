#! /bin/sh
rm -f variables
if [ ! -f .ingress/tf.tfvars ]
then
    printf "\033c"
    echo "*************************************************************************************************"
    echo "***********                                                                           ***********"
    echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
    echo "***********                                                                           ***********"
    echo "***********                    https://ventasimpactantes.com/script                   ***********"
    echo "***********                                                                           ***********"
    echo "================================================================================================="
    echo "===========                                                                           ==========="
    echo "===========                          ! C O M E N C E M O S !                          ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "                              COMPLETA TUS CREDENCIALES PERSONALES                               "
    echo ""   
    echo ""   
    echo -n " - Escribe el 'CORREO' de tu cuenta de 'Cloudflare.com', luego oprime [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        CFEMAIL="$INPUT"
        export CFEMAIL
    fi
    echo ""
    echo -n " - Pega tu 'API KEY' de 'Cloudflare.com' ('Ctrl + V' en tu teclado) y [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        CFAPI="$INPUT"
        export CFAPI
    fi
    echo ""
    echo -n " - Pega tu 'ID DE CLAVE DE ACCESO' de 'Amazon AWS', (Ctrl-V) y oprime [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        accesskey="$INPUT"
        export accesskey
    fi
    echo ""
    echo -n " - Pega aquí tu 'CLAVE DE ACCESO SECRETA' de 'Amazon AWS', (Ctrl-V) y [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        secretkey="$INPUT"
        export secretkey
    fi
    echo ""
    echo -n " - Confirma tu 'DOMINIO' registrado, en minúscula, sin www, y oprime  [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        MYDOMAIN="$INPUT"
        export MYDOMAIN
    fi
    MYSERVER=$(echo "$MYDOMAIN" | sed 's/\([[:alnum:]][[:alnum:]]*\)\.\([[:graph:]][[:graph:]]*\)/\1/g')
    export MYSERVER
    echo ""
    echo -n " - Escribe una 'CONTRASEÑA' para tu 'Base de Datos' y oprime la tecla [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        DBPASS="$INPUT"
        export DBPASS
    fi
    MYDBPASS=$(echo "$DBPASS" | sed 's/\$/\\$/g')
    export MYDBPASS
    MYDBPASSS=$(echo "$MYDBPASS" | sed 's/\$/\\$/g')
    export MYDBPASSS
    printf "\033c"
    echo "*************************************************************************************************"
    echo "***********                                                                           ***********"
    echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
    echo "***********                                                                           ***********"
    echo "***********                    https://ventasimpactantes.com/script                   ***********"
    echo "***********                                                                           ***********"
    echo "================================================================================================="
    echo "===========                                                                           ==========="
    echo "===========                           ! R E V I S E M O S !                           ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "                            ESTAS SON LAS CREDENCIALES QUE INGRESASTE:                           "
    echo ""
    echo ""
    echo "           Tu 'CORREO ELECTRÓNICO' de 'Cloudflare' es  =  $CFEMAIL                               "
    echo "           Tu 'CLOUDFLARE API KEY' es                  =  $CFAPI                                 "
    echo "           Tu 'AWS ID DE CLAVE DE ACCESO' es           =  $accesskey                             "
    echo "           Tu 'AWS CLAVE DE ACCESO SECRETA' es         =  $secretkey                             "
    echo "           El 'DOMINIO' para crear tu página web es    =  $MYDOMAIN                              "
    echo "           La 'CONTRASEÑA' para tu 'Base de Datos' es  =  $DBPASS                                "
    echo ""
    echo -n " *  ¿Son correctas estas Credenciales?                                                       "
    echo ""
    echo ""
    echo -n " - escribe 'crear' para iniciar el SERVIDOR, o 'editar' para volver a empezar  [ crear / editar ]: "   
    read INPUT
    if [ $INPUT = "crear" -o $INPUT = "CREAR" -o $INPUT = "Crear" ]
    then
        wget -qO archivos https://raw.githubusercontent.com/iversating/vimzwei/master/archivos2
        sh archivos
    else
        wget -qO variables https://raw.githubusercontent.com/iversating/vimzwei/master/variables2
        sh variables
    fi
else
    printf "\033c"
    EML="$(cat .ingress/tf.tfvars | grep 'email' | sed -e 's/cloudflare_email = //g; s/\"//g')"
    ACK="$(cat .ingress/tf.tfvars | grep 'access' | sed -e 's/aws_access_key = //g; s/\"//g')"
    SCK="$(cat .ingress/tf.tfvars | grep 'secret' | sed -e 's/aws_secret_key = //g; s/\"//g')"
    CFA="$(cat .ingress/tf.tfvars | grep 'api' | sed -e 's/cloudflare_api_key = //g; s/\"//g')"
    echo "*************************************************************************************************"
    echo "***********                                                                           ***********"
    echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
    echo "***********                                                                           ***********"
    echo "***********                    https://ventasimpactantes.com/script                   ***********"
    echo "***********                                                                           ***********"
    echo "================================================================================================="
    echo "===========                                                                           ==========="
    echo "===========                         ! C O N T I N U E M O S !                         ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "                              COMPLETA TUS CREDENCIALES PERSONALES                               "
    echo ""
    echo ""
    echo -n " - Este es tu 'CORREO ELECTRÓNICO' de 'Cloudflare'          = $EML                            "
    echo ""
    echo ""
    echo -n " - Esta es tu 'API KEY' de 'Cloudflare'                     = $CFA                            "
    echo ""
    echo ""
    echo -n " - Esta es tu 'ID DE CLAVE DE ACCESO' de 'Amazon AWS'       = $ACK                            "
    echo ""
    echo ""
    echo -n " - Esta es tu 'CLAVE DE ACCESO SECRETA' de 'Amazon AWS'     = $SCK                            "
    echo ""
    echo ""
    echo -n " - Confirma tu 'DOMINIO' en minúscula y sin 'www', [enter]  = "
    read INPUT
    if [ $INPUT ]; then
        MYDOMAIN="$INPUT"
        export MYDOMAIN
    fi
    MYSERVER=$(echo "$MYDOMAIN" | sed 's/\([[:alnum:]][[:alnum:]]*\)\.\([[:graph:]][[:graph:]]*\)/\1/g')
    export MYSERVER
    echo ""
    echo -n " - Escribe una 'CONTRASEÑA' para tu 'Base de Datos' [enter] = "
    read INPUT
    if [ $INPUT ]; then
        DBPASS="$INPUT"
        export DBPASS
    fi
    MYDBPASS=$(echo "$DBPASS" | sed 's/\$/\\$/g')
    export MYDBPASS
    MYDBPASSS=$(echo "$MYDBPASS" | sed 's/\$/\\$/g')
    export MYDBPASSS
    EML="$EML"
    export EML
    accesskey="$ACK"
    export accesskey
    secretkey="$SCK"
    export secretkey
    CFA="$CFA"
    export CFA
    printf "\033c"
    echo "*************************************************************************************************"
    echo "***********                                                                           ***********"
    echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
    echo "***********                                                                           ***********"
    echo "***********                    https://ventasimpactantes.com/script                   ***********"
    echo "***********                                                                           ***********"
    echo "================================================================================================="
    echo "===========                                                                           ==========="
    echo "===========                           ! R E V I S E M O S !                           ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "                             ESTAS SON LAS CREDENCIALES QUE INGRESASTE:                          "
    echo ""
    echo ""
    echo "           Tu 'CORREO ELECTRÓNICO' de 'Cloudflare' es  =  $EML                                   "
    echo "           Tu 'CLOUDFLARE API KEY' es                  =  $CFA                                   "
    echo "           Tu 'ID DE CLAVE DE ACCESO' de AWS es        =  $ACK                                   "
    echo "           Tu 'CLAVE DE ACCESO SECRETA' de AWS es      =  $SCK                                   "
    echo "           El 'DOMINIO' para crear tu página web es    =  $MYDOMAIN                              "
    echo "           La 'CONTRASEÑA' para tu 'Base de Datos' es  =  $DBPASS                                "
    echo ""
    echo -n " *  ¿Son correctas estas Credenciales?                                                          "
    echo ""
    echo ""
    echo -n " - escribe 'crear' para iniciar el SERVIDOR, o 'editar' para volver a empezar  [ crear / editar ] = "   
    read INPUT
    if [ $INPUT = "crear" -o $INPUT = "CREAR" -o $INPUT = "Crear" ]
    then
        wget -qO archivos https://raw.githubusercontent.com/iversating/vimzwei/master/archivos2
        sh archivos
    else
        wget -qO variables https://raw.githubusercontent.com/iversating/vimzwei/master/variables2
        sh variables
    fi
fi