function turnRight(brick)
    brick.MoveMotor('C',20);
    brick.MoveMotor('D',-100);
    pause(0.8);
    brick.StopMotor('C');
    brick.StopMotor('D');
end

