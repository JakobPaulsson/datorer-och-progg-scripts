if [ $# -eq 0 ]
  then
    echo "Usage: $0 fil_att_testa.cpp"
    exit 0
fi
if [ ! -f "$1" ]; then
    echo "Filen $1 finns ej."
    exit 0
fi
g++ -o uppgift6_losning $1
./uppgift6_losning < input.txt
rm uppgift6_losning