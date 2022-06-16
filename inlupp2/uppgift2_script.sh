if [ $# -eq 0 ]
  then
    echo "Format: fil_att_testa.cpp"
    exit 0
fi
if [ ! -f "$1" ]; then
    echo "Filen $1 finns ej."
    exit 0
fi
g++ -o uppgift2_losning $1
for i in {1..9}
do
    echo Testdata $i:
    echo
    ./uppgift2_losning < inputs/uppgift2_inputs_$i.txt
    echo
done
rm uppgift2_losning