echo "EXECUTION STARTED";
echo " - - - - - - - - - - - - - - - - - - - - - - - "

./EXE-CPP.sh
echo -n "-> NPB-CPP Done; "; date +%D" "%T
./EXE-FOR.sh
echo -n "-> NPB-FOR Done; "; date +%D" "%T
./LINES.sh
echo -n "-> Lines Done; "; date +%D" "%T
./BARS.sh
echo -n "-> Bars Done; "; date +%D" "%T
gnuplot PLOT.p
echo -n "-> Plots Done. "; date +%D" "%T

echo " - - - - - - - - - - - - - - - - - - - - - - - ";
echo ""; echo "EXECUTION FINISHED" echo ""