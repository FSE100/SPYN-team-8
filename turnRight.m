function turnRight(brick)
    brick.MoveMotor('C',45);
    brick.MoveMotor('D',-45);
    pause(0.8);
    brick.StopMotor('C');
    brick.StopMotor('D');
end

