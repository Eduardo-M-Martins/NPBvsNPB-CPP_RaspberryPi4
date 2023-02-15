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
set output '../IOT-EXE-C/Graphics/G-BT-C.png'
set title 'BT com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-BT.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-BT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-BT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-2:2]
set output '../IOT-EXE-C/Graphics/G-CG-C.png'
set title 'CG com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-CG.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-CG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-CG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-10:10]
set output '../IOT-EXE-C/Graphics/G-EP-C.png'
set title 'EP com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-EP.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-EP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-EP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-100:100]
set output '../IOT-EXE-C/Graphics/G-FT-C.png'
set title 'FT com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-FT.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-FT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-FT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-1:1]
set y2tics add ("C" 0)
set output '../IOT-EXE-C/Graphics/G-IS-C.png'
set title 'IS com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-IS.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-IS.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-IS.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "C"
set y2tics add ("Fortran" 0)

set y2range[-10:10]
set output '../IOT-EXE-C/Graphics/G-LU-C.png'
set title 'LU com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-LU.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-LU.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-LU.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-10:10]
set output '../IOT-EXE-C/Graphics/G-MG-C.png'
set title 'MG com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-MG.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-MG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-MG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-2:2]
set output '../IOT-EXE-C/Graphics/G-SP-C.png'
set title 'SP com OpenMP (NPB-CPP vs NPB) - Classe C' font "Arial,24
plot "../IOT-EXE-C/Logs-Graph-Bars/bars-SP.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-C/Logs-Graph-Lines/zCPP-SP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-C/Logs-Graph-Lines/zFOR-SP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

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
set output '../IOT-EXE-B/Graphics/G-BT-B.png'
set title 'BT com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-BT.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-BT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-BT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-3:3]
set output '../IOT-EXE-B/Graphics/G-CG-B.png'
set title 'CG com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-CG.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-CG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-CG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-10:10]
set output '../IOT-EXE-B/Graphics/G-EP-B.png'
set title 'EP com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-EP.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-EP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-EP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-70:70]
set output '../IOT-EXE-B/Graphics/G-FT-B.png'
set title 'FT com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-FT.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-FT.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-FT.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-3:3]
set y2tics add ("C" 0)
set output '../IOT-EXE-B/Graphics/G-IS-B.png'
set title 'IS com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-IS.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-IS.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-IS.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "C"
set y2tics add ("Fortran" 0)

set y2range[-10:10]
set output '../IOT-EXE-B/Graphics/G-LU-B.png'
set title 'LU com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-LU.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-LU.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-LU.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-10:10]
set output '../IOT-EXE-B/Graphics/G-MG-B.png'
set title 'MG com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-MG.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-MG.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-MG.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"

set y2range[-2:2]
set output '../IOT-EXE-B/Graphics/G-SP-B.png'
set title 'SP com OpenMP (NPB-CPP vs NPB) - Classe B' font "Arial,24
plot "../IOT-EXE-B/Logs-Graph-Bars/bars-SP.txt" using ($1):($2) with boxes lc "#505050" fs pattern notitle axes x1y2, "../IOT-EXE-B/Logs-Graph-Lines/zCPP-SP.txt" lt 3 lc 'blue' lw 2 ps 2 w yerrorlines title "C++", "../IOT-EXE-B/Logs-Graph-Lines/zFOR-SP.txt" lt 1 lc rgb 'black' lw 2 ps 2 w yerrorlines title "Fortran"
