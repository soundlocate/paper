set terminal eps size 15.4cm,6.35cm color
set output "welle1d_new.eps"
set style line 1 lc rgb '#8b1a0e' pt 1 ps 1 lt 1 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2 # --- green
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

sin1(x) = (x > 0) ? sin(2*x) : 1 / 0
set key outside
set key right top
set samples 10000
set xrange [0:15]
set arrow from 0,0 to 4,0 nohead lc rgb 'red'
set label 1 at 0,-0.1 "Gangunterschied" front
set xlabel "Zeit[t]"
set ylabel "Amplitude"

plot sin1(x)  title "Mikrofon 1" w l ls 2, sin1(x - 4)  title "Mikrofon 2" w l ls 1
