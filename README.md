# announce

When activated, the offline-server will announce its ip addresses on the network.
The output of the command

    ip addr

is sent over the network.
You can capture it by running 

    ./announce.py

And this can create the following output:

	('172.16.0.101', 59212):
		1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN 
		    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
		    inet 127.0.0.1/8 scope host lo
		       valid_lft forever preferred_lft forever
		2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP qlen 1000
		    link/ether b8:27:eb:70:20:2a brd ff:ff:ff:ff:ff:ff
		3: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP qlen 1000
		    link/ether 7c:dd:90:90:aa:af brd ff:ff:ff:ff:ff:ff
		    inet 172.16.0.101/16 brd 172.16.255.255 scope global wlan0
		       valid_lft forever preferred_lft forever

