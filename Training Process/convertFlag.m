%this function convert a string of flag feature into an integer of flag extracted feature
function new_data= convertFlag(data_name)
    if (strcmp (data_name,'') || strcmp (data_name,'N/A'))
        new_data=0;
    else
        if strcmp (data_name(1),'"')
            last = size(data_name,2);
            data_name(1) = ',';
            data_name(last) = ',';
        end
        flag = strread(data_name,'%s','delimiter',',');
        total_flag = size(flag,1);
        temp=0;
        for j=1:total_flag
            if (strcmp (cell2mat(flag(j)),''))
                temp2=0;
            end
            if (strcmp (cell2mat(flag(j)),'F'))
                temp2=1;
            end
            if (strcmp (cell2mat(flag(j)),'S'))
                temp2=2;
            end
            if (strcmp (cell2mat(flag(j)),'R'))
                temp2=3;
            end
            if (strcmp (cell2mat(flag(j)),'P'))
                temp2=4;
            end
            if (strcmp (cell2mat(flag(j)),'A'))
                temp2=5;
            end
            if (strcmp (cell2mat(flag(j)),'U'))
                temp2=6;
            end
            if (strcmp (cell2mat(flag(j)),'Illegal7'))
                temp2=7;
            end
            if (strcmp (cell2mat(flag(j)),'Illegal8'))
                temp2=8;
            end
            temp = temp + temp2;
        end
        new_data=temp;
    end
end
