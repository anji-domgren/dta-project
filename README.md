# DTA-PROJECT, AUTUMN 2025

// AODV Information
-------------------------------------------------------------
--size=X , this creates an X amount of nodes

--step=Y , amount of meters between nodes

--time=Z , simulation runs for Z amount of seconds



// 10 meter - linear topology
-------------------------------------------------------------
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=10 --time=100

// 51 meter - linear topology
-------------------------------------------------------------
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=51 --time=100

// 60 meter - linear topology
-------------------------------------------------------------
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=60 --time=100


// Following was used to redirect to a txt.
-------------------------------------------------------------
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=10 --time=100 > ping10.txt 2>&1

./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=51 --time=100 > ping51.txt 2>&1

./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=60 --time=100 > ping60.txt 2>&1

// GNUPLOT
-------------------------------------------------------------
gnuplot aodv_live_rtt_marked.gp
