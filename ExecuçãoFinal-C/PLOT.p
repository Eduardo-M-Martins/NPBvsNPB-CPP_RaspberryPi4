reset
set terminal png size 1250,912 font "Arial,26"
set autoscale xy
set xrange[0.5:4.5]
set logscale y 2
set grid lc rgb 'black' lw 2
set xlabel "  Número de threads  "
set ylabel "  Tempo de execução [sec]  "
set xtics 1
set border lw 2
set key top right box lc rgb 'white' dashtype solid
set boxwidth 0.6 relative
set y2tics
set format y2 "%g %%"
set y2label "  Diferença [%]  "
set style fill pattern 1
set y2tics add ("Fortran" 0)

set y2range[-30:30]
set output 'G-BT-C.png'
set title 'BT com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-BT.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-BT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-BT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-2:2]
set output 'G-CG-C.png'
set title 'CG com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-CG.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-CG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-CG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-10:10]
set output 'G-EP-C.png'
set title 'EP com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-EP.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-EP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-EP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-100:100]
set output 'G-FT-C.png'
set title 'FT com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-FT.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-FT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-FT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-1:1]
set y2tics add ("C" 0)
set output 'G-IS-C.png'
set title 'IS com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-IS.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-IS.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-IS.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "C"
set y2tics add ("Fortran" 0)

set y2range[-10:10]
set output 'G-LU-C.png'
set title 'LU com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-LU.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-LU.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-LU.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-10:10]
set output 'G-MG-C.png'
set title 'MG com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-MG.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-MG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-MG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-2:2]
set output 'G-SP-C.png'
set title 'SP com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "aresult-SP.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "zCPP-SP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "zFOR-SP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"
