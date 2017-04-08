
clear;

echo ""
function cargando()
   {

clear;
echo -ne '\n'
echo -ne 'Open Enchilada\r'
sleep .7
echo -ne 'OPen Enchilada\r'
sleep .5
echo -ne 'OpEn Enchilada\r'
sleep .8
echo -ne 'OpeN Enchilada\r'
sleep .1
echo -ne 'Open_Enchilada\r'
sleep .1
echo -ne 'Open ENchilada\r'
sleep .1
echo -ne 'Open EnChilada\r'
sleep .1
echo -ne 'Open EncHilada\r'
sleep .1
echo -ne 'Open EnchIlada\r'
sleep .1
echo -ne 'Open EnchiLada\r'
sleep .1
echo -ne 'Open EnchilAda\r'
sleep .1
echo -ne 'Open EnchilaDa\r'
sleep .1
echo -ne 'Open EnchiladA\r'
sleep .1
echo -ne 'Open Enchilada\r'
sleep .1
echo -ne 'Open Enchilada good bye !\r'
sleep .1
echo -ne '\n'
sleep 1

   }





#while :;do for s in / - \\ \|; do printf "\r$s";sleep .4;done;done

cargando

clear;

echo ' 

The
_______                                                       
__  __ \___________________                                   
_  / / /__  __ \  _ \_  __ \                                  
/ /_/ /__  /_/ /  __/  / / /   Podcast Downloader                               
\____/ _  .___/\___//_/ /_/                                   
       /_/                                                    
__________            ______ ___________      _________       
___  ____/_______________  /____(_)__  /_____ ______  /_____ _
__  __/  __  __ \  ___/_  __ \_  /__  /_  __ `/  __  /_  __ `/
_  /___  _  / / / /__ _  / / /  / _  / / /_/ // /_/ / / /_/ / 
/_____/  /_/ /_/\___/ /_/ /_//_/  /_/  \__,_/ \__,_/  \__,_/  
                                Project                              

'

echo " Good Bye The Open Enchilada Project   "
echo " By Rafael Bucio "


menu=("Bajar todos los mp3" "informacion" "Salir")
select opt in "${menu[@]}"
do
    case $opt in
      "Bajar todos los mp3")
      echo ""
            clear;          
            echo "Hey, en un momento bajaras todos los Podcast de OpenEnchilada"
            echo "Creando Directorio"
            mkdir mp3;
            chmod 777 mp3/
            cargando
            echo "w0rk it !!"
            echo "Espere un momento, los audios estan bajando !!"
            wget -e robots=off --wait 1 -P mp3/ -r -A .mp3 http://openenchilada.com/ -o log.txt
          echo " Listo :) "
          cat mp3/log.txt
          echo " Disfrutalos !! "
            ;;  


        "informacion")
      echo ""
            echo "Open Enchilada  "
            echo " 2010 - 2017"
            echo " <3 "
            echo "  4ev3r"
            ;;

        "Salir")
          clear;
          echo "Adios"
            break
            ;;
        *) echo Opcion invalida;;
    esac
done
