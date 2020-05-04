read -p "dime el nombre" nombre
read -p "dime valor PID" pid

n=1
maxl=`cat procesos.txt | wc -l`

while [ $n -le $maxl ]; do

    nom=`cat procesos.txt | awk '{print$1}' | head -$n | tail -1`
    pid2=`cat procesos.txt | awk '{prin$2}' | head -$n | tail -1`

    if [ $nom -eq $nombre ] && [ $pid2 -eq $pid ]; 
    then
	echo "el pid corresponde a ese usuario"
    
    fi
    n=$(($n+1))
done

       

