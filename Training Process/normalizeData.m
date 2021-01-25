%function to normalize data into scale 0-1
function y_norm = normalizeData(y, y_min, y_max)
    y_norm = (y - y_min)/(y_max-y_min);
end
