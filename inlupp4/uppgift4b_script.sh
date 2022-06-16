if [ ! -f "$1" ]; then
    echo "Filen $1 finns ej."
    exit 0
fi
g++ -o uppgift4b_losning $1
for i in {1..5}
do
    echo Testdata $i:
    echo
    ./uppgift4b_losning < inputs/uppgift4b_inputs_$i.txt
    echo
done
rm uppgift4b_losning