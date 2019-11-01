function turnLeft(brick)
    brick.MoveMotor('C',-100);
    brick.MoveMotor('D',20);
    pause(0.8)
    brick.StopMotor('C');
    brick.StopMotor('D');
end

