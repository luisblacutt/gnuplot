#programa para calcular el acumulado mensual de precipitación para un punto de observación
#El problema en este código es que si no hay datos, no lo registra y hay un salto

awk -F, 'NR>31 {if($1==2000 && $4==12 && $2==10 && $8<900) print $1,suma+=$8}' oruro_2000-2024.csv > tempo.txt
tail -1 tempo.txt >lluviaoctubre.txt
for anio in `seq 2001 2024`
do
awk -v anho=$anio -F, 'NR>31 {if($1==anho && $4==12 && $2==10 && $8<900) print $1,suma+=$8}' oruro_2000-2024.csv > tempo.txt
tail -1 tempo.txt >>lluviaoctubre.txt
done
set boxwidth 0.5
set style fill solid
done
set xtics ("2000" 0.0, "2001" 1.0, "2002" 2.0,"2003" 3.0,"2004" 4.0,"2008" 5.0,"2006" 6.0,"2023" 7.0,"2014" 8.0,"2003" 9.0,"2007" 10.0, "2009" 11.0,"2019" 12.0, "2016" 13.0, "2015" 14.0,"2001" 15.0,"2017" 16.0,"2021" 17.0,"2000" 18.0,"2024" 19.0,"2013" 20.0,"2010" 21.0,"2018" 22.0, "2005" 23.0, "2002" 24.0) rotate by -45
set xtics ("2022" 0.0, "2011" 1.0, "2012" 2.0,"2020" 3.0,"2004" 4.0,"2005" 5.0,"2006" 6.0,"2007" 7.0,"2008" 8.0,"2009" 9.0,"2010" 10.0, "2011" 11.0,"2012" 12.0, "2013" 13.0, "2014" 14.0,"2015" 15.0,"2016" 16.0,"2017" 17.0,"2018" 18.0,"2019" 19.0,"2020" 20.0,"2021" 21.0,"2022" 22.0, "2023" 23.0, "2024" 24.0) rotate by -45

set xrange [-1:25]

p 'lluviaoctubre.txt' using 2 w boxes
p '<sort -V -k2 lluviaoctubre.txt' using 2 w boxes
