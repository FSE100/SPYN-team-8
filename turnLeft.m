function turnLeft(brick)
    brick.MoveMotor('C',-30);
    brick.MoveMotor('D',50);
    pause(1.8)
    brick.StopMotor('C');
    brick.StopMotor('D');
end

