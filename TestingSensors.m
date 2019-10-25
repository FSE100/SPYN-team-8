%testing color
brick.SetColorMode(4, 2);
color = brick.ColorCode(4);
display(color);

%testing ultrasonic
distance = brick.UltrasonicDist(1);
display(distance);

