%testing color
brick.SetColorMode(4, 2);
color = brick.ColorCode(4);
display(color);

%testing ultrasonic
distance = brick.UltrasonicDist(1);
display(distance);

%testing push button
while brick.TouchPressed(2) == 0
 brick.playTone(100, 300, 500);
 pause(0.75);
end