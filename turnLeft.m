function turnLeft(brick)
    brick.MoveMotor('C',-80);
    brick.MoveMotor('D',80);
    pause(1.1)
    brick.StopMotor('C');
    brick.StopMotor('D');
end

