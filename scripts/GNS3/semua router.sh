######################## Cyberia ########################
auto eth0
iface eth0 inet manual
    # ===== Cyberia (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> NAT GNS3
    up ip addr add 192.168.122.50/24 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A1 (192.232.14.0/25) | peer: JJ, MyuMyu
    up ip addr add 192.232.14.1/25 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A2 (192.232.16.56/30) | peer: Wired
    up ip addr add 192.232.16.57/30 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.168.122.1
    up ip route add 192.232.0.0/19 via 192.232.16.58
 
    # NAT
    up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Wired ########################
auto eth0
iface eth0 inet manual
    # ===== Wired (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A2 (192.232.16.56/30) | peer: Cyberia
    up ip addr add 192.232.16.58/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A6 (192.232.16.32/29) | peer: Psyche, Copland, Schumann
    up ip addr add 192.232.16.33/29 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A5 (192.232.16.64/30) | peer: Tachibana
    up ip addr add 192.232.16.65/30 dev eth2
    up ip link set eth2 up
 
    # eth3 -> A3 (192.232.16.60/30) | peer: Navi
    up ip addr add 192.232.16.61/30 dev eth3
    up ip link set eth3 up
 
    # Routing statis
    up ip route add default via 192.232.16.57
    up ip route add 192.232.12.0/23 via 192.232.16.62
    up ip route add 192.232.15.128/26 via 192.232.16.62
    up ip route add 192.232.0.0/22 via 192.232.16.34
    up ip route add 192.232.8.0/23 via 192.232.16.35
    up ip route add 192.232.15.192/26 via 192.232.16.35
    up ip route add 192.232.4.0/22 via 192.232.16.36
    up ip route add 192.232.16.40/29 via 192.232.16.36
    up ip route add 192.232.16.68/30 via 192.232.16.36
    up ip route add 192.232.10.0/23 via 192.232.16.66
    up ip route add 192.232.14.128/25 via 192.232.16.66
    up ip route add 192.232.15.0/25 via 192.232.16.66
    up ip route add 192.232.16.0/27 via 192.232.16.66
    up ip route add 192.232.16.48/29 via 192.232.16.66
    up ip route add 192.232.16.72/29 via 192.232.16.66
    up ip route add 192.232.16.80/29 via 192.232.16.66
    up ip route add 192.232.16.88/30 via 192.232.16.66
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Navi ########################
auto eth0
iface eth0 inet manual
    # ===== Navi (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A3 (192.232.16.60/30) | peer: Wired
    up ip addr add 192.232.16.62/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A24 (192.232.13.0/24) | peer: Alice, Reika
    up ip addr add 192.232.13.1/24 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A23 (192.232.15.128/26) | peer: Taro
    up ip addr add 192.232.15.129/26 dev eth2
    up ip link set eth2 up
 
    # eth3 -> A4 (192.232.12.0/24) | peer: Kuma, Miho, Yasuo
    up ip addr add 192.232.12.1/24 dev eth3
    up ip link set eth3 up
 
    # Routing statis
    up ip route add default via 192.232.16.61
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Psyche ########################
auto eth0
iface eth0 inet manual
    # ===== Psyche (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A6 (192.232.16.32/29) | peer: Wired, Copland, Schumann
    up ip addr add 192.232.16.34/29 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A7 (192.232.0.0/22) | peer: Karl, Lin
    up ip addr add 192.232.0.1/22 dev eth1
    up ip link set eth1 up
 
    # Routing statis
    up ip route add default via 192.232.16.33
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Copland ########################
auto eth0
iface eth0 inet manual
    # ===== Copland (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A6 (192.232.16.32/29) | peer: Wired, Psyche, Schumann
    up ip addr add 192.232.16.35/29 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A25 (192.232.15.192/26) | peer: Juri
    up ip addr add 192.232.15.193/26 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A8 (192.232.8.0/23) | peer: Masayuki
    up ip addr add 192.232.8.1/23 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.33
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Schumann ########################
auto eth0
iface eth0 inet manual
    # ===== Schumann (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A6 (192.232.16.32/29) | peer: Wired, Psyche, Copland
    up ip addr add 192.232.16.36/29 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A10 (192.232.16.68/30) | peer: Accela
    up ip addr add 192.232.16.69/30 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A9 (192.232.16.40/29) | peer: Akashic
    up ip addr add 192.232.16.41/29 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.33
    up ip route add 192.232.4.0/22 via 192.232.16.70
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Accela ########################
auto eth0
iface eth0 inet manual
    # ===== Accela (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A10 (192.232.16.68/30) | peer: Schumann
    up ip addr add 192.232.16.70/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A11 (192.232.4.0/22) | peer: Omnipresence, Denpa
    up ip addr add 192.232.4.1/22 dev eth1
    up ip link set eth1 up
 
    # Routing statis
    up ip route add default via 192.232.16.69
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Tachibana ########################
auto eth0
iface eth0 inet manual
    # ===== Tachibana (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A5 (192.232.16.64/30) | peer: Wired
    up ip addr add 192.232.16.66/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A13 (192.232.16.72/30) | peer: Deus
    up ip addr add 192.232.16.73/30 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A12 (192.232.10.0/23) | peer: Collective, Ghost
    up ip addr add 192.232.10.1/23 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.65
    up ip route add 192.232.14.128/25 via 192.232.16.74
    up ip route add 192.232.15.0/25 via 192.232.16.74
    up ip route add 192.232.16.0/27 via 192.232.16.74
    up ip route add 192.232.16.48/29 via 192.232.16.74
    up ip route add 192.232.16.76/30 via 192.232.16.74
    up ip route add 192.232.16.80/29 via 192.232.16.74
    up ip route add 192.232.16.88/30 via 192.232.16.74
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Deus ########################
auto eth0
iface eth0 inet manual
    # ===== Deus (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A13 (192.232.16.72/30) | peer: Tachibana
    up ip addr add 192.232.16.74/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A15 (192.232.16.76/30) | peer: Protocol7
    up ip addr add 192.232.16.77/30 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A14 (192.232.14.128/25) | peer: Lilith, Specter
    up ip addr add 192.232.14.129/25 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.73
    up ip route add 192.232.15.0/25 via 192.232.16.78
    up ip route add 192.232.16.0/27 via 192.232.16.78
    up ip route add 192.232.16.48/29 via 192.232.16.78
    up ip route add 192.232.16.80/29 via 192.232.16.78
    up ip route add 192.232.16.88/30 via 192.232.16.78
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Protocol7 ########################
auto eth0
iface eth0 inet manual
    # ===== Protocol7 (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A15 (192.232.16.76/30) | peer: Deus
    up ip addr add 192.232.16.78/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A17 (192.232.16.80/30) | peer: Knights
    up ip addr add 192.232.16.81/30 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A16 (192.232.15.0/26) | peer: Chisa, Hodgeson
    up ip addr add 192.232.15.1/26 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.77
    up ip route add 192.232.15.64/26 via 192.232.16.82
    up ip route add 192.232.16.0/27 via 192.232.16.82
    up ip route add 192.232.16.48/29 via 192.232.16.82
    up ip route add 192.232.16.84/30 via 192.232.16.82
    up ip route add 192.232.16.88/30 via 192.232.16.82
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Knights ########################
auto eth0
iface eth0 inet manual
    # ===== Knights (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A17 (192.232.16.80/30) | peer: Protocol7
    up ip addr add 192.232.16.82/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A19 (192.232.16.84/30) | peer: Phantoma
    up ip addr add 192.232.16.85/30 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A18 (192.232.16.48/29) | peer: Eiri
    up ip addr add 192.232.16.49/29 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.81
    up ip route add 192.232.15.64/26 via 192.232.16.86
    up ip route add 192.232.16.0/27 via 192.232.16.86
    up ip route add 192.232.16.88/30 via 192.232.16.86
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Phantoma ########################
auto eth0
iface eth0 inet manual
    # ===== Phantoma (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A19 (192.232.16.84/30) | peer: Knights
    up ip addr add 192.232.16.86/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A20 (192.232.16.88/30) | peer: Shibuya
    up ip addr add 192.232.16.89/30 dev eth1
    up ip link set eth1 up
 
    # eth2 -> A22 (192.232.16.0/27) | peer: Semi
    up ip addr add 192.232.16.1/27 dev eth2
    up ip link set eth2 up
 
    # Routing statis
    up ip route add default via 192.232.16.85
    up ip route add 192.232.15.64/26 via 192.232.16.90
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Shibuya ########################
auto eth0
iface eth0 inet manual
    # ===== Shibuya (Router) =====
    # Tempel ke: klik kanan node > Configure > Edit config (/etc/network/interfaces)
 
    up echo 1 > /proc/sys/net/ipv4/ip_forward
 
    # eth0 -> A20 (192.232.16.88/30) | peer: Phantoma
    up ip addr add 192.232.16.90/30 dev eth0
    up ip link set eth0 up
 
    # eth1 -> A21 (192.232.15.64/26) | peer: Lain, Mika
    up ip addr add 192.232.15.65/26 dev eth1
    up ip link set eth1 up
 
    # Routing statis
    up ip route add default via 192.232.16.89
 
    up echo nameserver 8.8.8.8 > /etc/resolv.conf