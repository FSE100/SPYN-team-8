function turnRight(brick)
    brick.MoveMotor('C',20);
    brick.MoveMotor('D',-100);
    pause(0.9);
    brick.StopMotor('C');
    brick.StopMotor('D');
end

