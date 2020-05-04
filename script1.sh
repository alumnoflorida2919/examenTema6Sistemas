read -p "dime el nombre" nombre
read -p "dime valor PID" pid

for i in $(cat procesos.txt); do
    nom=`cat procesos.txt | awk '{print$1}' | head -$n | tail -1`

    if [ $nom -eq $nombre ]
