function turnRightReverse(brick)
    brick.StopAllMotors();
    brick.MoveMotor('C',20);
    brick.MoveMotor('D',-60);
    pause(2.5);
    brick.StopMotor('C');
    brick.StopMotor('D');
end
