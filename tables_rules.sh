iptables -A FORWARD -i enp1s0 -o wlp2s0 -j ACCEPT
iptables -A FORWARD -i wlp2s0 -o enp1s0 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -t nat -A POSTROUTING -o wlp2s0 -j MASQUERADE
