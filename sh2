#! /bin/sh
rm archivos.sh checkvars.sh checkcred.sh first.sh terraform.sh variables.sh pem.sh terraform.tfstate -f
printf "\033c"
echo "*************************************************************************************************"
echo "***********                                                                           ***********"
echo "***********                         CONSTRUCTOR WEB 'VIM 2.0'                         ***********"
echo "***********                                                                           ***********"
echo "***********                    https://ventasimpactantes.com/script                   ***********"
echo "***********                                                                           ***********"
echo "================================================================================================="
echo "===========                                                                           ==========="
echo "===========                          ! B I E N V E N I D O !                          ==========="
echo "===========                                                                           ==========="
echo "================================================================================================="
echo ""
echo -n " -  Escribe tu 'DOMINIO' registrado, en minúscula, y oprime [enter] = "
read INPUT
if [[ $INPUT =~ ".tk" ]]; then
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
    echo "           Este 'Script-VIM-v.2.0' NO funciona con dominios gratuitos de extensión '.tk'        "
    echo ""
    echo "           debes haber comprado un dominio comercial '.com' '.net' '.com.co' '.org' etc.        "
    echo ""
    echo ""
    echo -n " -  ¿Ya has comprado un dominio comercial y deseas continuar?  [ si / no ]: "
    read INPUT
    if [ $INPUT = "s" -o $INPUT = "si" -o $INPUT = "sí" -o $INPUT = "S" -o $INPUT = "SI" -o $INPUT = "SÍ" ]
    then
        wget -qO sh https://raw.githubusercontent.com/iversating/vimzwei/master/sh2
        sh sh
    else
        echo ""
        echo -n " -  ¿deseas ejecutar el 'Script-VIM-v.1.0' en su lugar?  [ si / no ]: "
        read INPUT
        if [ $INPUT = "s" -o $INPUT = "si" -o $INPUT = "sí" -o $INPUT = "S" -o $INPUT = "SI" -o $INPUT = "SÍ" ]
        then
            echo ""
            echo " ... descargando script ..."
            echo ""
            wget -qO vim https://raw.githubusercontent.com/iversating/vim/master/sh
            sh vim
        else
            exit
        fi
    fi
else
    MYDOMAIN=$INPUT
    export MYDOMAIN
    continue
fi
cd
rm -f ls.txt
ls >> ls.txt
DOMTK="$(cat ls.txt | grep '.tk')"
DOMCOM="$(cat ls.txt | grep '.com')"
rm -f ls.txt
if [ -d "$DOMTK" ]
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
    echo "===========                            ! A T E N C I Ó N !                            ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "           Al parecer ya se ha creado una servidor para '$DOMTK'                                 "
    echo ""
    echo "           Este script solo funciona para una servidor por cuenta a la vez.                      "
    echo ""
    echo "           Si deseas eliminar este servidor y así poder crear uno nuevo, ejecuta:                " 
    echo ""
    echo "                                      sh destruir [enter]                                      "
    echo ""
    echo "           ESTE PROCESO ES  ¡ I R R E V E R S I B L E ! "
    echo "           EJECÚTALO SOLO SI ESTÁS SEGURO DE ELIMINAR EL SERVIDOR Y LA PÁGINA '$DOMTK'           "
    echo ""
    echo "           para soporte y asesoría escríbenos a script@ventasimpactantes.com                     "
    echo ""
    echo "================================================================================================="
    echo ""
    exit
else
    continue
fi
cd
rm -f ls.txt
ls >> ls.txt
DOMTK="$(cat ls.txt | grep '.tk')"
DOMCOM="$(cat ls.txt | grep '.com')"
rm -f ls.txt
if [ -d "$DOMCOM" ]
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
    echo "===========                            ! A T E N C I Ó N !                            ==========="
    echo "===========                                                                           ==========="
    echo "================================================================================================="
    echo ""
    echo "           Al parecer ya se ha creado una servidor para '$DOMCOM'                                "
    echo ""
    echo "           Este script solo funciona para una servidor por cuenta a la vez.                      "
    echo ""
    echo "           Si deseas eliminar este servidor y así poder crear uno nuevo, ejecuta:                " 
    echo ""
    echo "                                      sh destruir [enter]                                      "
    echo ""
    echo "           ESTE PROCESO ES  ¡ I R R E V E R S I B L E ! "
    echo "           EJECÚTALO SOLO SI ESTÁS SEGURO DE ELIMINAR EL SERVIDOR Y LA PÁGINA '$DOMCOM'          "
    echo ""
    echo "           para soporte y asesoría escríbenos a script@ventasimpactantes.com                     "
    echo ""
    echo "================================================================================================="
    echo ""
    exit
else
    continue
fi
wget -qO check https://raw.githubusercontent.com/iversating/vimzwei/master/check2
sh check
