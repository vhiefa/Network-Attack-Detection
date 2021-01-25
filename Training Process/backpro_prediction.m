%this function aims to predict the output of classfier, with backpropagation algorithm
%the parameter are datainput, weight, architecture
%datainput is an array of one input data, an array consists of 10 features.
%weight is a list of weight, consists of weightV and weightW
%architecture is an array of neural network architecture
function Y = backpro_prediction(datainput, weight, architecture)
   weightV= weight{1};
   weightW = weight{2};
   num_neuronX = architecture(1);
   num_neuronZ = architecture(2);
   num_neuronY = architecture(3);
   for i=1:num_neuronZ
       sigmaV =0;
       for j=2:num_neuronX+1
         sigmaV = sigmaV + datainput(j-1)*weightV( i, j);
       end
       Znet(i) = 1*weightV(i, 1) + sigmaV;
       Z(i) =  1/(1+ exp(-Znet(i)));
   end
   for i=1:num_neuronY
       sigmaW =0;
       for j=2:num_neuronZ+1
         sigmaW = sigmaW + Z(j-1)*weightW( i, j);
       end
       Ynet(i) = 1*weightW(i, 1) + sigmaW;
       Y(i) = 1/(1+ exp(-Ynet(i)));
   end
