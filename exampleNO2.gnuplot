set xdata time
set format x "%m/%d/%y"
set format x "%m/%d/%Y"
set timefmt "%m/%d/%Y"
set title "NO2 Obs 2021"
set title "NO2 comparison"
set xtics rotate by -90
set xlabel "time"
set ylabel "NOx ug/m^3"
set y2label "x10^15 molec/cm^2"
set key bottom right
p 'NO2-Obs-2021.txt' using 1:2 title "NO2"
p 'NO2-Obs-Sat-2021.txt' using 1:2 title "NO2-Obs" linetype 8
rep 'NO2-Obs-Sat-2021.txt' using 1:3 title "NO2-Sat" axes x1y2 linetype 7


