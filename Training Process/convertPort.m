%this function convert a string of port_number feature into an integer of port_number extracted feature, based on its category
function new_data= convertPort(port)
    port = str2double(port);
    if ((port >=0) && (port<=1023)) %Well Known Port
        new_data=1;
    end
    if ((port >=1024) && (port<=49151)) %Registered Port
        new_data=2;
    end
    if ((port >=49152) && (port<=65535))%Private Port
        new_data=3;
    end
end
