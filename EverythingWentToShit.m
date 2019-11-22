global key;
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