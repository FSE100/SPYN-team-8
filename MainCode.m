

%C is right motor
%B is left motor
%2=blue; 3=green; 4=yellow; 5=red; 
brick.SetColorMode(4, 2);
color = brick.ColorCode(4);
while color ~= 2 %if car is not close to wall
    
    if color == 3
        global key
        InitKeyboard();
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
            break;
    end
    end
    elseif color == 5
        pause(3);
        brick.beep;
    end
    
    turnLeft(brick);
    left = brick.UltrasonicDist(1);
    
    turnRight(brick);
    turnRight(brick);
    right = brick.UltrasonicDist(1);
    
    if left - right <-30
        
        color = brick.ColorCode(4);
        if color == 5
           pause(3); 
        end
        moveForward(brick);
        
    elseif left - right >30
            
        turnLeft(brick);
        turnLeft(brick);
        moveForward(brick);
    else
        turnLeft(brick);
        color = brick.ColorCode(4);
        if color == 5
           pause(3); 
        end
        moveForward(brick);
            
    end
    color = brick.ColorCode(4);
end
global key
InitKeyboard();
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
            pause(0.5);
            brick.StopMotor('C');
            brick.StopMotor('D');
        case 'leftarrow'
            brick.MoveMotor('C',-50);
            brick.MoveMotor('D',50);
            pause(0.5)
            brick.StopMotor('C');
            brick.StopMotor('D');
        case 0
            brick.MoveMotor('A', 10);
            pause(0.25);
        case 'q'
            CloseKeyboard();
    end
end
   