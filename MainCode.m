global key;
InitKeyboard();
%C is right motor
%D is left motor
%2=blue; 3=green; 4=yellow; 5=red;
brick.SetColorMode(4, 2);
color = brick.ColorCode(4);
pickup = 0;
while color ~= 3 && pickup == 0 %while passenger hasn't been picked up yet
    disp('******')
    disp(color);
    if color == 5
        disp(color);
        brick.StopAllMotors();
        pause(4);
        brick.beep;
    end
    moveForward (brick);
    right = brick.UltrasonicDist(1);
    touchL = brick.TouchPressed(2);
    touchR = brick.TouchPressed(3);
    disp('======');
    disp(right);
    if right >= 80
        display(right);
        turnRight (brick);
    end
    if touchL || touchR
        display(touchL);
        display(touchR);
        if right >= 100
            display(right);
            turnRightReverse (brick);
        else
            moveBackward (brick);
            pause(1);
            turnLeft (brick);
            color = brick.ColorCode(4);
        end
    end
end
if color == 3
    pickup = 1;
    while 1
        pause (0.1);
        switch key
            case 'uparrow'
                brick.MoveMotor('C',-20);
                brick.MoveMotor('D',-20);
                pause(1);
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'downarrow'
                brick.MoveMotor('C',20);
                brick.MoveMotor('D',20);
                pause(1);
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'rightarrow'
                brick.MoveMotor('C',50);
                brick.MoveMotor('D',-50);
                pause(0.1);
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'leftarrow'
                brick.MoveMotor('C',-50);
                brick.MoveMotor('D',50);
                pause(0.1)
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'w'
                brick.MoveMotor('A', 5);
                pause(.1);
                brick.StopMotor('A');
            case 's'
                brick.MoveMotor('A', -5);
                pause(.1);
                brick.StopMotor('A');
            case 'q'
                CloseKeyboard();
                break;
        end
    end
end
while color ~= 2 && pickup == 1 %while passenger has been picked up
    
    moveForward (brick);
    right = brick.UltrasonicDist(1);
    touchL = brick.TouchPressed(2);
    touchR = brick.TouchPressed(3);
    if color == 5
        brick.StopAllMotors();
        pause(4);
        brick.beep;
    end
    if right >= 40
        display(right);
        turnRight (brick);
    end
    if xor(touchL, touchR)
        display(touchL);
        display(touchR);
        moveBackward (brick);
        pause(1);
        turnLeft (brick);
        color = brick.ColorCode(4);
    end
end

if color ==2 && pickup ==1
    InitKeyboard();
    while 1
        pause(0.1);
        switch key
            case 'uparrow'
                brick.MoveMotor('C',-20);
                brick.MoveMotor('D',-20);
                pause(1);
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'downarrow'
                brick.MoveMotor('C',20);
                brick.MoveMotor('D',20);
                pause(1);
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'rightarrow'
                brick.MoveMotor('C',50);
                brick.MoveMotor('D',-50);
                pause(0.5);
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'leftarrow'
                brick.MoveMotor('C',-50);
                brick.MoveMotor('D',50);
                pause(0.5)
                brick.StopMotor('C');
                brick.StopMotor('D');
            case 'w'
                brick.MoveMotor('A', 5);
                pause(.1);
                brick.StopMotor('A');
            case 's'
                brick.MoveMotor('A', -5);
                pause(.1);
                brick.StopMotor('A');
            case 'q'
                CloseKeyboard();
        end
    end
end
