brick.SetColorMode(4, 2);
pickup = 0;
color = brick.ColorCode(4);
while color ~= 3 && pickup == 0 %while passenger hasn't been picked up yet
    moveForward (brick);
    right = brick.UltrasonicDist(1);
    touch = brick.TouchPressed(2);
    if color == 5
        brick.StopAllMotors();
        pause(4);
        brick.beep;
    end
    if right >= 40
        display(right);
        turnRight (brick);
    end
    if touch
        display(touch);
        moveBackward (brick);
        pause(1);
        turnRightReverse (brick);
    end
end