%this function aims to extract the features of neural network input
%input for this function is a string of file input name, eg : 'Testing.csv'
%input file should be in one folder with this function and has .csv format
%This function will result a .xlsx file of extracted features
function feature_extraction(input_file)
    fid =fopen(input_file);
    dataset = textscan(fid, '%s');
    totalData = size(dataset{1});
    header = cell2mat(dataset{1}(1));
    header = (strread(header, '%s', 'delimiter', ','))'; 
    extracted_feature = [header];
    for i=2:totalData
        i
        data = cell2mat(dataset{1}(i));
        temp_data = regexp(data, ',(?=(?:[^"]*"[^"]*")*[^"]*$)', 'split');
        appName = convertAppName(temp_data{1});
        totalSourceBytes = temp_data{2}; %this is string
        totalDestinationBytes = temp_data{3};
        direction = convertDirection(temp_data{4});
        sourceTCPFlagsDescription = convertFlag(temp_data{5}); 
        destinationTCPFlagsDescription = convertFlag(temp_data{6});
        source = convertIPtoDecimal(temp_data{7});
        protocolName = convertProtocol(temp_data{8});
        sourcePort = convertPort(temp_data{9});
        destination = convertIPtoDecimal(temp_data{10});
        Tag = convertTag(temp_data{11});
        row_data = {num2str(appName), totalSourceBytes,  totalDestinationBytes,num2str(direction), num2str(sourceTCPFlagsDescription),num2str(destinationTCPFlagsDescription), num2str(source),  num2str(protocolName), num2str(sourcePort), num2str(destination), num2str(Tag) };
        extracted_feature = [extracted_feature;row_data];
    end
    result_file_name=strread(input_file, '%s', 'delimiter', '.');
    xlswrite(strcat(result_file_name{1},'_extractedfeature_result.xlsx' ),extracted_feature);