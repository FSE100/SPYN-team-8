 global key;
 InitKeyboard();
%C is right motor
%B is left motor
%2=blue; 3=green; 4=yellow; 5=red; 
brick.SetColorMode(4, 2);
color = brick.ColorCode(4);
pickup = 0;
while color ~= 3 && pickup == 0 %while passenger hasn't been picked up yet
    
    if color == 5
        pause(3);
        brick.beep;
    end
    
    left = brick.UltrasonicDist(1);
    
    turnRight(brick);
    turnRight(brick);
    right = brick.UltrasonicDist(1);
    
    if left - right <-30
        
         turnLeft(brick);
        
        color = brick.ColorCode(4);
        if color == 5
           pause(3); 
        end
        moveForward(brick);
        
    elseif left - right >30
            
        turnRight(brick);
       
        moveForward(brick);
    else
        
        turnRight(brick);
        turnRight(brick);
        
        color = brick.ColorCode(4);
        if color == 5
           pause(3);    
        end
        moveForward(brick);
            
    end
    color = brick.ColorCode(4);
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
while color ~= 2 && pickup == 1 %while passenger hasn't been picked up yet
    
    if color == 5
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
if color ==2 && pickup ==1
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
        end
    end
end
   