%this function convert a string of direction feature into an integer of direction extracted feature
function new_direction = convertDirection(direction)
    if strcmp (direction,'L2R')
        new_direction=1;
    end
    if strcmp (direction, 'L2L')
        new_direction=2;
    end
    if strcmp (direction,'R2L')
        new_direction=3;
    end
    if strcmp (direction, 'R2R')
        new_direction=4;
    end
end
