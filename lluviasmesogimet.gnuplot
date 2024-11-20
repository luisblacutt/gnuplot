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
p 'lluviaoctubre.txt' using 2 w boxes
p '<sort -V -k2 lluviaoctubre.txt' using 2 w boxes
