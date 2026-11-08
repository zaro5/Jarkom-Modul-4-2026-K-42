######################## Akashic ########################
auto eth0
iface eth0 inet manual
    # ===== Akashic (Host di A9: 192.232.16.40/29) =====
    up ip addr add 192.232.16.42/29 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.16.41
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Alice ########################
auto eth0
iface eth0 inet manual
    # ===== Alice (Host di A24: 192.232.13.0/24) =====
    up ip addr add 192.232.13.2/24 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.13.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Chisa ########################
auto eth0
iface eth0 inet manual
    # ===== Chisa (Host di A16: 192.232.15.0/26) =====
    up ip addr add 192.232.15.2/26 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.15.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Collective ########################
auto eth0
iface eth0 inet manual
    # ===== Collective (Host di A12: 192.232.10.0/23) =====
    up ip addr add 192.232.10.2/23 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.10.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Denpa ########################
auto eth0
iface eth0 inet manual
    # ===== Denpa (Host di A11: 192.232.4.0/22) =====
    up ip addr add 192.232.4.3/22 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.4.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Eiri ########################
auto eth0
iface eth0 inet manual
    # ===== Eiri (Host di A18: 192.232.16.48/29) =====
    up ip addr add 192.232.16.50/29 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.16.49
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Ghost ########################
auto eth0
iface eth0 inet manual
    # ===== Ghost (Host di A12: 192.232.10.0/23) =====
    up ip addr add 192.232.10.3/23 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.10.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Hodgeson ########################
auto eth0
iface eth0 inet manual
    # ===== Hodgeson (Host di A16: 192.232.15.0/26) =====
    up ip addr add 192.232.15.3/26 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.15.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## JJ ########################
auto eth0
iface eth0 inet manual
    # ===== JJ (Host di A1: 192.232.14.0/25) =====
    up ip addr add 192.232.14.2/25 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.14.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Juri ########################
auto eth0
iface eth0 inet manual
    # ===== Juri (Host di A25: 192.232.15.192/26) =====
    up ip addr add 192.232.15.194/26 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.15.193
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Karl ########################
auto eth0
iface eth0 inet manual
    # ===== Karl (Host di A7: 192.232.0.0/22) =====
    up ip addr add 192.232.0.2/22 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.0.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Kuma ########################
auto eth0
iface eth0 inet manual
    # ===== Kuma (Host di A4: 192.232.12.0/24) =====
    up ip addr add 192.232.12.2/24 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.12.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Lain ########################
auto eth0
iface eth0 inet manual
    # ===== Lain (Host di A21: 192.232.15.64/26) =====
    up ip addr add 192.232.15.66/26 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.15.65
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Lilith ########################
auto eth0
iface eth0 inet manual
    # ===== Lilith (Host di A14: 192.232.14.128/25) =====
    up ip addr add 192.232.14.130/25 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.14.129
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Lin ########################
auto eth0
iface eth0 inet manual
    # ===== Lin (Host di A7: 192.232.0.0/22) =====
    up ip addr add 192.232.0.3/22 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.0.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Masayuki ########################
auto eth0
iface eth0 inet manual
    # ===== Masayuki (Host di A8: 192.232.8.0/23) =====
    up ip addr add 192.232.8.2/23 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.8.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Miho ########################
auto eth0
iface eth0 inet manual
    # ===== Miho (Host di A4: 192.232.12.0/24) =====
    up ip addr add 192.232.12.3/24 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.12.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Mika ########################
auto eth0
iface eth0 inet manual
    # ===== Mika (Host di A21: 192.232.15.64/26) =====
    up ip addr add 192.232.15.67/26 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.15.65
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## MyuMyu ########################
auto eth0
iface eth0 inet manual
    # ===== MyuMyu (Host di A1: 192.232.14.0/25) =====
    up ip addr add 192.232.14.3/25 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.14.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Omnipresence ########################
auto eth0
iface eth0 inet manual
    # ===== Omnipresence (Host di A11: 192.232.4.0/22) =====
    up ip addr add 192.232.4.2/22 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.4.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Reika ########################
auto eth0
iface eth0 inet manual
    # ===== Reika (Host di A24: 192.232.13.0/24) =====
    up ip addr add 192.232.13.3/24 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.13.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Semi ########################
auto eth0
iface eth0 inet manual
    # ===== Semi (Host di A22: 192.232.16.0/27) =====
    up ip addr add 192.232.16.2/27 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.16.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Specter ########################
auto eth0
iface eth0 inet manual
    # ===== Specter (Host di A14: 192.232.14.128/25) =====
    up ip addr add 192.232.14.131/25 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.14.129
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Taro ########################
auto eth0
iface eth0 inet manual
    # ===== Taro (Host di A23: 192.232.15.128/26) =====
    up ip addr add 192.232.15.130/26 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.15.129
    up echo nameserver 8.8.8.8 > /etc/resolv.conf
 
######################## Yasuo ########################
auto eth0
iface eth0 inet manual
    # ===== Yasuo (Host di A4: 192.232.12.0/24) =====
    up ip addr add 192.232.12.4/24 dev eth0
    up ip link set eth0 up
    up ip route add default via 192.232.12.1
    up echo nameserver 8.8.8.8 > /etc/resolv.conf