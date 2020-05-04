read -p "dime usuario: " usuario

cd /etc
maxl=`cat passwd | wc -l`
n=1
cont=0

while [ $n -le $maxl ]; do
    nombre=`cat passwd | awk '{print $1}' | head -$n | tail -1`
    if [ $usario -eq $nombre ]; then
	echo "el usuario existe"
    else
	cont=$(($cont+1))
    fi
    n=$(($n+1))
done

if [ $maxl -eq $cont ]; then
    echo "el usuario no existe"
fi

    
