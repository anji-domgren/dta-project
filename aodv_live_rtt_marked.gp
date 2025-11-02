set encoding utf8
set terminal pngcairo size 1000,550 font "Arial,12"
set output "aodv_live_rtt_marked.png"

set title "AODV – RTT over ICMP sequence"
set xlabel "ICMP sequence number"
set ylabel "Round Trip Time (ms)"
set grid
set logscale y
set key top right box

# main curves
plot \
  "<grep 'time=' ping10.txt | awk -F'time=' '{print NR, $2}'" \
      using 1:2 with lines lw 1.8 lc rgb "#3498DB" title "10 m spacing", \
  "<grep 'time=' ping51.txt | awk -F'time=' '{print NR, $2}'" \
      using 1:2 with lines lw 2 dashtype 2 lc rgb "#E74C3C" title "51 m spacing (ends – link break)", \
  "<grep 'time=' ping51.txt | awk -F'time=' '{if(NR==NR) print NR, $2}' | tail -1" \
      using 1:2 with points pt 7 ps 2 lc rgb "#E74C3C" title "51 m route lost"

# --- Add text annotation near top-right
set label 1 "51 m link lost / simulation continues\n(no more replies)" \
    at graph 0.72, 0.92 tc rgb "#E74C3C" font ",10"

replot
