net=enxc2a0d1c15cb4
net1=enx3202aafd7522
text=$(ip addr show $net)
passowrd=nas123
echo $passowrd | sudo -S ifconfig $net 192.168.8.100
while echo $text | grep "inet " > /dev/null; do
    echo $passowrd | sudo -S ifconfig $net 192.168.8.100
    sleep 0.5
done
text=$(ip addr show $net1)
echo $passowrd | sudo -S ifconfig $net1 192.168.8.100
while echo $text | grep "inet " > /dev/null; do
    echo $passowrd | sudo -S ifconfig $net1 192.168.8.100
    sleep 0.5
done