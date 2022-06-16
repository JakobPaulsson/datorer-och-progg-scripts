if [ ! -f "$1" ]; then
    echo "Filen $1 finns ej."
    exit 0
fi
g++ -o uppgift5a_losning $1
for i in {1..4}
do
    echo Testdata $i:
    echo
    ./uppgift5a_losning < inputs/uppgift5a_inputs_$i.txt
    echo
done
rm uppgift5a_losning