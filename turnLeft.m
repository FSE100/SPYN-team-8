function turnLeft(brick)
    brick.MoveMotor('C',-10);
    brick.MoveMotor('D',50);
    pause(1.2)
    brick.StopMotor('C');
    brick.StopMotor('D');
end

