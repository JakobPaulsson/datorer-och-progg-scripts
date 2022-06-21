if [ $# -eq 0 ]
  then
    echo "Usage: $0 fil_att_testa.cpp"
    exit 0
fi
if [ ! -f "$1" ]; then
    echo "Filen $1 finns ej."
    exit 0
fi
g++ -o uppgift5b_losning $1
for i in {1..5}
do
    echo Testdata $i:
    echo
    ./uppgift5b_losning < inputs/uppgift5b_inputs_$i.txt
    echo
done
rm uppgift5b_losning