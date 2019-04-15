program Scanner;
Uses sysutils;
var 
    S : String;
    ch : char;
    theFile : File of char;
    i : integer;
    FP:Integer;
    sizeOfChar:integer;
    dataToken: array of Char;
    extraIncrement : integer;

    function countChar():integer;
    var
    z:Integer;
    begin
        Assign (theFile,'prima.pas');
        Reset (theFile); 
        ch:='A';
        z:=0;
        While not Eof(theFile) do
            Begin
                Read (theFile,ch);
                sizeOfChar:=sizeOfChar+1;
            end;
        close(theFile);
        countChar:=sizeOfChar;
    end;
    procedure charLoad(var dataToken: array of Char);
    var z:Integer;
    begin
        Assign (theFile,'prima.pas');
        Reset (theFile); 
        ch:='A';
        z:=0;
        While not Eof(theFile) do
            Begin
                Read (theFile,ch);
                dataToken[z]:=ch;
                z+=1;
            end;
        close (theFile);
    end;


begin
    SetLength(dataToken,countChar());
    charLoad(dataToken);
    i:=0;
    // while i<>countChar do
    for i:=0 to countChar do
     begin
        //integer check
        if  (UpperCase(dataToken[i+0])='I') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='T') and 
            (UpperCase(dataToken[i+3])='E') and 
            (UpperCase(dataToken[i+4])='G') and
            (UpperCase(dataToken[i+5])='E') and  
            (UpperCase(dataToken[i+6])='R') then
            begin
                writeln('tipe data integer');
            end
        else
        if  (UpperCase(dataToken[i+0])='R') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='A') and 
            (UpperCase(dataToken[i+3])='L') then
            begin
                writeln('tipe data real');
            end
        else
        if (UpperCase(dataToken[i+0])='R') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='A') and 
            (UpperCase(dataToken[i+3])='L') then
            begin
                writeln('tipe data real');
            end
        else
        if (UpperCase(dataToken[i+0])='C') and 
            (UpperCase(dataToken[i+1])='H') and 
            (UpperCase(dataToken[i+2])='A') and 
            (UpperCase(dataToken[i+3])='R') then
            begin
                writeln('tipe data char');
            end
        else
        if  (UpperCase(dataToken[i+0])='S') and 
            (UpperCase(dataToken[i+1])='T') and 
            (UpperCase(dataToken[i+2])='R') and 
            (UpperCase(dataToken[i+3])='I') and 
            (UpperCase(dataToken[i+4])='N') and
            (UpperCase(dataToken[i+5])='G') then
            begin
                writeln('tipe data string');
            end
        else
        if  (UpperCase(dataToken[i+0])='N') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='T') then
            begin
                writeln('operator not');
            end
        else
        if  (UpperCase(dataToken[i+0])='+') then
            begin
              writeln('operator +');
            end
        else
        if  (UpperCase(dataToken[i+0])='-') then
            begin
              writeln('operator -');
            end
        else    
        if  (UpperCase(dataToken[i+0])='*') then
            begin
              writeln('operator *');
            end
        else
        if  (UpperCase(dataToken[i+0])='D') and 
            (UpperCase(dataToken[i+1])='I') and 
            (UpperCase(dataToken[i+2])='V') then
            begin
                writeln('operator div');
            end
        else
        if  (UpperCase(dataToken[i+0])='/') then 
            begin
                writeln('operator /');
            end
        else
        if  (UpperCase(dataToken[i+0])='M') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='D') then
            begin
                writeln('operator mod');
            end
        else
        if  (UpperCase(dataToken[i+0])='A') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='D') then
            begin
                writeln('operator and');
            end
        else
        if  (UpperCase(dataToken[i+0])='O') and 
            (UpperCase(dataToken[i+1])='R') then
            begin
                writeln('operator or');
            end
        else
        if  (UpperCase(dataToken[i+0])='=') then
            begin
                writeln('operator =');
            end
        else
        if  (UpperCase(dataToken[i+0])='<') then
            begin
                if (UpperCase(dataToken[i+1])='=') then
                 begin
                    writeln('operator <=');
                 end else if(UpperCase(dataToken[i+1])='>') then
                   begin
                     writeln('operator <>');
                   end else 
                        writeln('operator <');
            end
        else 
        if  (UpperCase(dataToken[i+0])='(') then
            begin
                writeln('operator (');
            end
        else  
        if  (UpperCase(dataToken[i+0])=')') then
            begin
                writeln('operator )');
            end
        else 
        if  (UpperCase(dataToken[i+0])='>') then
            begin
                if (UpperCase(dataToken[i+1])='=') then
                 begin
                    writeln('operator >=');
                 end else 
                     writeln('operator >');
            end
        else 
        if  (UpperCase(dataToken[i+0])='[') then
            begin
              writeln('simbol [');
            end
        else 
        if  (UpperCase(dataToken[i+0])=']') then
            begin
              writeln('simbol ]');
            end
        else
        if  (UpperCase(dataToken[i+0])=',') then
            begin
              writeln('simbol ,');
            end
        else
        if  (UpperCase(dataToken[i+0])=';') then
            begin
              writeln('simbol ;');
            end
        else
        if  (UpperCase(dataToken[i+0])='.') then
            begin
              writeln('simbol .');
            end
        else
        if  (UpperCase(dataToken[i+0])=':') then
            begin
              if (UpperCase(dataToken[i+1])='=') then
                begin
                  writeln('operator :=');
                end else 
                    writeln('operator :');
            end
        else
        if  (UpperCase(dataToken[i+0])='C') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='N') and 
            (UpperCase(dataToken[i+3])='S') and 
            (UpperCase(dataToken[i+4])='T') then
            begin
                writeln('keyword const');
            end
        else
        if  (UpperCase(dataToken[i+0])='v') and 
            (UpperCase(dataToken[i+1])='a') and 
            (UpperCase(dataToken[i+2])='r') then
            begin
                writeln('keyword var');
            end
        else
        if  (UpperCase(dataToken[i+0])='F') and 
            (UpperCase(dataToken[i+1])='U') and 
            (UpperCase(dataToken[i+2])='N') and 
            (UpperCase(dataToken[i+3])='C') and 
            (UpperCase(dataToken[i+4])='T') and
            (UpperCase(dataToken[i+5])='I') and 
            (UpperCase(dataToken[i+5])='O') and  
            (UpperCase(dataToken[i+6])='N') then
            begin
                writeln('keyword function');
            end
        else 
        if  (UpperCase(dataToken[i+0])='P') and 
            (UpperCase(dataToken[i+1])='R') and 
            (UpperCase(dataToken[i+2])='O') and 
            (UpperCase(dataToken[i+3])='C') and 
            (UpperCase(dataToken[i+4])='E') and
            (UpperCase(dataToken[i+5])='D') and 
            (UpperCase(dataToken[i+5])='U') and  
            (UpperCase(dataToken[i+6])='R') and  
            (UpperCase(dataToken[i+7])='E') then
            begin
                writeln('keyword procedure');
            end
        else  
        if  (UpperCase(dataToken[i+0])='A') and 
            (UpperCase(dataToken[i+1])='R') and 
            (UpperCase(dataToken[i+2])='R') and 
            (UpperCase(dataToken[i+3])='A') and 
            (UpperCase(dataToken[i+4])='Y') then
            begin
                writeln('keyword array');
            end
        else  
        if  (UpperCase(dataToken[i+0])='R') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='C') and 
            (UpperCase(dataToken[i+3])='O') and 
            (UpperCase(dataToken[i+4])='R') and
            (UpperCase(dataToken[i+5])='D') then
            begin
                writeln('keyword record');
            end
        else  
        if  (UpperCase(dataToken[i+0])='P') and 
            (UpperCase(dataToken[i+1])='R') and 
            (UpperCase(dataToken[i+2])='O') and 
            (UpperCase(dataToken[i+3])='G') and 
            (UpperCase(dataToken[i+4])='R') and
            (UpperCase(dataToken[i+5])='A') and 
            (UpperCase(dataToken[i+5])='M') then
            begin
                writeln('keyword program');
            end
        else   
        if  (UpperCase(dataToken[i+0])='B') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='G') and 
            (UpperCase(dataToken[i+3])='I') and 
            (UpperCase(dataToken[i+4])='N') then
            begin
                writeln('keyword begin');
            end
        else    
        if  (UpperCase(dataToken[i+0])='I') and 
            (UpperCase(dataToken[i+1])='F') then
            begin
                writeln('keyword if');
            end
        else   
        if  (UpperCase(dataToken[i+0])='C') and 
            (UpperCase(dataToken[i+1])='A') and 
            (UpperCase(dataToken[i+2])='S') and 
            (UpperCase(dataToken[i+3])='E') then
            begin
                writeln('keyword case');
            end
        else  
        if  (UpperCase(dataToken[i+0])='R') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='P') and 
            (UpperCase(dataToken[i+3])='E') and 
            (UpperCase(dataToken[i+4])='A') and
            (UpperCase(dataToken[i+5])='T') then
            begin
                writeln('keyword repeat');
            end
        else    
        if  (UpperCase(dataToken[i+0])='W') and 
            (UpperCase(dataToken[i+1])='H') and 
            (UpperCase(dataToken[i+2])='I') and 
            (UpperCase(dataToken[i+3])='L') and 
            (UpperCase(dataToken[i+4])='E') then
            begin
                writeln('keyword while');
            end
        else   
           
        if  (UpperCase(dataToken[i+0])='E') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='D') then
            begin
                writeln('keyword end');
            end
        else    
        if  (UpperCase(dataToken[i+0])='E') and 
            (UpperCase(dataToken[i+1])='L') and 
            (UpperCase(dataToken[i+2])='S') and 
            (UpperCase(dataToken[i+3])='E') then
            begin
                writeln('keyword else');
            end
        else    
        if  (UpperCase(dataToken[i+0])='U') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='T') and 
            (UpperCase(dataToken[i+3])='I') and 
            (UpperCase(dataToken[i+4])='L') then
            begin
                writeln('keyword until');
            end
        else     
        if  (UpperCase(dataToken[i+0])='O') and 
            (UpperCase(dataToken[i+1])='F') then
            begin
                writeln('keyword of');
            end
        else     
        if  (UpperCase(dataToken[i+0])='D') and 
            (UpperCase(dataToken[i+1])='O') then
            begin
                writeln('keyword do');
            end
        else    
        if  (UpperCase(dataToken[i+0])='T') and 
            (UpperCase(dataToken[i+1])='O') then
            begin
                writeln('keyword to');
            end
        else  
        if  (UpperCase(dataToken[i+0])='D') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='W') and 
            (UpperCase(dataToken[i+3])='N') and 
            (UpperCase(dataToken[i+4])='T') and
            (UpperCase(dataToken[i+5])='O') then
            begin
                writeln('keyword downto');
            end
        else   
        if  (UpperCase(dataToken[i+0])='T') and 
            (UpperCase(dataToken[i+1])='H') and 
            (UpperCase(dataToken[i+2])='E') and 
            (UpperCase(dataToken[i+3])='N') then
            begin
                writeln('keyword then');
            end
        else 
     
    end;//endfor
 
 Writeln;

end.