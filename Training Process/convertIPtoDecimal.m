%this function convert a string of IP format feature into an integer of decimal format feature
function new_data = convertIPtoDecimal(data_lama)
    IP = strread(data_lama,'%s','delimiter','.');
    
    IP1 = str2double(cell2mat(IP(1)));
    IP2 = str2double(cell2mat(IP(2)));
    IP3 = str2double(cell2mat(IP(3)));
    IP4 = str2double(cell2mat(IP(4)));
    
    new_data=IP1*(256)^3+IP2*(256)^2+IP3*(256)^1+IP4*(256)^0;
end
