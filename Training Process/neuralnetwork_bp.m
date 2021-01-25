%this function aims to execute the training proccess of neural network
%There are four parameters for this function : input_file, learning_rate, maxError, maxEpoch
%input_file should be a string of extracted training data file name, with .xlsx format, eg : 'undersampling_dataset.xlsx'
%learning_rate and maxError should be an integer or double
%maxEpoch should be an integer
function neuralnetwork_bp(input_file, learning_rate, maxError, maxEpoch )

dataset =xlsread(input_file,1); 

num_neuronX = 10;
num_neuronZ = 5; %Here you can change the size of neuron Z (hidden neuron)
num_neuronY = 1;

%generate random number to initialize weight V
for i=1:num_neuronZ
    for j=1:num_neuronX+1
        weight_V(i,j)=0.01*randn(1);
    end
end

%generate random number to initialize weight W 
for i=1:num_neuronY
    for j=1:num_neuronZ+1
        weight_W(i,j)=0.01*randn(1); 
    end
end

backpro_training(dataset, [num_neuronX num_neuronZ num_neuronY], {weight_V weight_W}, learning_rate,maxError,maxEpoch);