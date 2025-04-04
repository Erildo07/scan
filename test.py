import socket

def port_scan(target, ports):
    print(f"Scanning {target}...\n")
    
    for port in ports:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)  # Tempo limite para resposta
        result = sock.connect_ex((target, port))  # Retorna 0 se a porta estiver aberta
        
        if result == 0:
            print(f"Port {port} is OPEN")
        
        sock.close()

target_ip = "10.0.0.1"  # Altere para o IP desejado
ports_to_scan = range(1, 1025)  # Varre portas de 1 a 1024

port_scan(target_ip, ports_to_scan)
