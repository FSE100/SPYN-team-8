function moveBackward(brick)
brick.StopAllMotors();
brick.MoveMotor('C',25);
brick.MoveMotor('D',25);
%pause(2);
%brick.StopMotor('C');
%brick.StopMotor('D');
end