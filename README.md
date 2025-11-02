# dta-project
aodv


// 10 meter - linear topology
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=10 --time=100

// 51 meter - linear topology
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=51 --time=100

// 60 meter - linear topology
./ns3 run src/aodv/examples/aodv-example.cc -- aodv --size=10 --step=60 --time=100
