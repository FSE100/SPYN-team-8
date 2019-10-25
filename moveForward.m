function moveForward(brick)
brick.MoveMotor('C',-100);
brick.MoveMotor('D',-100);
pause(2);
brick.StopMotor('C');
brick.StopMotor('D');
end

