%this function convert a string of protocol_name feature into an integer of protocol_name extracted feature
function new_data = convertProtocol(protocol)
    if strcmp (protocol,'tcp_ip')
        new_data=1;
    end
    if strcmp (protocol, 'udp_ip')
        new_data=2;
    end
    if strcmp (protocol,'icmp_ip')
        new_data=3;
    end
    if strcmp (protocol, 'igmp')
        new_data=4;
    end
    if strcmp (protocol, 'ip')
        new_data=5;
    end
end
