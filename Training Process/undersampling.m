%This function aims to make new dataset by undersampling approach
%This approach makes the amount of ever-represented class being cut off, so that the amount will be balanced/same with the under-represented class.
function undersampling(input_file)
    dataset =xlsread(input_file,1); 
    totalData = size (dataset,1);

    header = {'appName','totalSourceBytes' ,'totalDestinationBytes',	'direction',	'sourceTCPFlagsDescription',	'destinationTCPFlagsDescription',	'source',	'protocolName',	'sourcePort'	,'destination',	'Tag'}; 
    new_dataset = [header];
    totalNormalData =0;
    totalAttackData =0;
    for i=1:totalData
        if dataset(i,11)==1
            totalNormalData=totalNormalData+1;
        else
            totalAttackData=totalAttackData+1;
        end
    end
    if totalNormalData>totalAttackData
        underrepresented_class =0;
        total_underrepresented_class = totalAttackData;
    else
        underrepresented_class =1;
        total_underrepresented_class = totalNormalData;
    end
    
    k=0;
    for i=1:totalData
        i
        if dataset(i,11)==underrepresented_class
            row_data = {dataset(i,1), dataset(i,2),  dataset(i,3),dataset(i,4), dataset(i,5),dataset(i,6),dataset(i,7), dataset(i,8), dataset(i,9), dataset(i,10), dataset(i,11)};
            new_dataset = [new_dataset;row_data];
        else
            if k<total_underrepresented_class
                row_data = {dataset(i,1), dataset(i,2),  dataset(i,3),dataset(i,4), dataset(i,5),dataset(i,6),dataset(i,7), dataset(i,8), dataset(i,9), dataset(i,10), dataset(i,11)};
                new_dataset = [new_dataset;row_data];
                k=k+1;
            end
        end
    end
    total_underrepresented_class
    k
    new_totaldata = size(new_dataset,1)
    xlswrite('undersampling_dataset.xlsx',new_dataset);