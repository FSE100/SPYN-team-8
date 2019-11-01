brick.MoveMotor('C',-100);
    brick.MoveMotor('D',20);
    pause(1.2)
    brick.StopMotor('C');
    brick.StopMotor('D');

distance = brick.UltrasonicDist(1);
display(distance);

%minimum distance before it will hit the wall = 10
%technically we tested it and it can go closer but not much