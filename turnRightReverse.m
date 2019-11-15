function turnRightReverse(brick)
    brick.StopAllMotors();
    brick.MoveMotor('C',20);
    brick.MoveMotor('D',-50);
    pause(1.8);
    brick.StopMotor('C');
    brick.StopMotor('D');
end
