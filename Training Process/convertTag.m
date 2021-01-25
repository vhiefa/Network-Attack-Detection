%this function convert a string of Tag feature into an integer of Tag extracted feature
function new_data = convertTag(data_name)
    if strcmp (data_name,'Normal')
        new_data=1;
    end
    if strcmp (data_name, 'Attack')
        new_data=0;
    end
end
