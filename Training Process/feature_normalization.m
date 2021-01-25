%This function aims to normalize the data by make it into scale 0-1
function feature_normalization(input_file)
    dataset =xlsread(input_file,1); 
    totalData = size (dataset,1);

    header = {'appName','totalSourceBytes' ,'totalDestinationBytes',	'direction',	'sourceTCPFlagsDescription',	'destinationTCPFlagsDescription',	'source',	'protocolName',	'sourcePort'	,'destination',	'Tag'}; 
    normalized_feature = [header];
    for i=1:totalData
        i
        appName = normalizeData(dataset(i,1), 1, 85);
        totalSourceBytes = normalizeData(dataset(i,2), 0, 28489776);
        totalDestinationBytes = normalizeData(dataset(i,3), 0, 258893568);
        direction = normalizeData(dataset(i,4), 1, 4);
        sourceTCPFlagsDescription = normalizeData(dataset(i,5), 0, 36);
        destinationTCPFlagsDescription = normalizeData(dataset(i,6), 0, 36);
        source = normalizeData(dataset(i,7), 0, 3631443087);
        protocolName = normalizeData(dataset(i,8), 1, 5);
        sourcePort = normalizeData(dataset(i,9), 1, 3);
        destination = normalizeData(dataset(i,10), 0, 4294967295);
        Tag = dataset(i,11);
        row_data = {num2str(appName), totalSourceBytes,  totalDestinationBytes,num2str(direction), num2str(sourceTCPFlagsDescription),num2str(destinationTCPFlagsDescription), num2str(source),  num2str(protocolName), num2str(sourcePort), num2str(destination), num2str(Tag) };
        normalized_feature = [normalized_feature;row_data];
    end
    result_file_name=strread(input_file, '%s', 'delimiter', '_');
    xlswrite(strcat(result_file_name{1},'_normalizedfeature_result.xlsx' ),normalized_feature);