#!/usr/bin/gnuplot

set datafile separator ','
set size 1,1
set terminal pdf

set xtics 0, 2, 8
set ytics -60, 20, 100

set colorsequence podo


#set title "Pitch" font "Sans,12"
set output "pitch.pdf"
set yrange [-20: 60]
plot 'integreat_ahrs.csv' using 1:3 smooth unique with line notitle lw 3 lc rgb '#377EB8',\
    'integreat_pdf.csv' using 1:3 notitle smooth unique with line lw 2 lc rgb '#E41A1C', \
    'integreat_fixed_drone.csv' using 1:3 notitle smooth unique with line lw 2 lc rgb '#984EA3', \
    'matlab_eval.csv' using 1:3 notitle smooth unique with line lw 2 lc rgb '#4DAF4A'

#set title "Yaw" font "Sans,12"
set output "yaw.pdf"
set yrange [-40: 40]
plot 'integreat_ahrs.csv' using 1:2 smooth unique with line notitle lw 3 lc rgb '#377EB8',\
    'integreat_pdf.csv' using 1:2 notitle smooth unique with line lw 2 lc rgb '#E41A1C', \
    'integreat_fixed_drone.csv' using 1:2 notitle smooth unique with line lw 2 lc rgb '#984EA3', \
    'matlab_eval.csv' using 1:2 notitle smooth unique with line lw 2 lc rgb '#4DAF4A'


#set title "Roll" font "Sans,12"
set output "Roll.pdf"
set yrange [-40: 45]

plot 'integreat_ahrs.csv' using 1:4 smooth unique with line notitle lw 3 lc rgb '#377EB8',\
    'integreat_pdf.csv' using 1:4 notitle smooth unique with line lw 2 lc rgb '#E41A1C', \
    'integreat_fixed_drone.csv' using 1:4 notitle smooth unique with line lw 2 lc rgb '#984EA3', \
    'matlab_eval.csv' using 1:4 notitle smooth unique with line lw 2 lc rgb '#4DAF4A'
