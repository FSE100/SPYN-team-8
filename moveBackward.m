function moveBackward(brick)
brick.StopAllMotors();
brick.MoveMotor('C',50);
brick.MoveMotor('D',50);
%pause(2);
%brick.StopMotor('C');
%brick.StopMotor('D');
end