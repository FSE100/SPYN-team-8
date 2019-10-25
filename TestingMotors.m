brick.MoveMotor('A', 10);
pause(0.25);
brick.MoveMotor('A', 0);
%testing motor movement
brick.MoveMotor('C',-100);
brick.MoveMotor('B',-100);
pause(2);
brick.StopMotor('C');
brick.StopMotor('B');

%testing medium motor
brick.MoveMotor('A', -10);
pause(0.25);