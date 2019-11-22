function turnRight(brick)
    moveForward (brick);
    pause(3);
    brick.StopAllMotors();
    brick.MoveMotor('C',20);
    brick.MoveMotor('D',-60);
    pause(2.5);
    brick.StopMotor('C');
    brick.StopMotor('D');
    
end

