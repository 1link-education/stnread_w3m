#! /bin/bash

echo
echo "making stenoread write new pullled packets to usable .pcap files each 3 minutes..."

#filename=/home/mongodb/stenoread_output/stenoread_all

while [ true ]
do
	echo
	date
	stenoread 'after 3m ago' -w /home/mongodb/stenoread_output/stenoread_allpkt-$(date +"%Y%m%d%H%M%S").pcap
# -w /home/mongodb/stenoread_net_[n0].pcap
	echo "----------------------------"
	sleep 180
done

echo
