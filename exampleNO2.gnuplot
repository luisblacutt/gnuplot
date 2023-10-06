set xdata time
set format x "%m/%d/%y"
set format x "%m/%d/%Y"
set timefmt "%m/%d/%Y"
set title "NO2 Obs 2021"
set xtics rotate by -90
set xlabel "time"
set ylabel "NOx ug/m^3"
set key bottom right
p 'NO2-Obs-2021.txt' using 1:2 title "NO2"
