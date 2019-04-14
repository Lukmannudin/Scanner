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
    while i<>countChar do
       begin
        //integer check
        if UpperCase(dataToken[i+0])='I'then
         if UpperCase(dataToken[i+1])='N'then
          if UpperCase(dataToken[i+2])='T'then
           if UpperCase(dataToken[i+3])='E'then
            if UpperCase(dataToken[i+4])='G'then
             if UpperCase(dataToken[i+5])='E'then
              if UpperCase(dataToken[i+6])='R'then
                writeln('tipe data integer');      
        
        //real check
        if UpperCase(dataToken[i+0])='R'then
         if UpperCase(dataToken[i+1])='E'then
          if UpperCase(dataToken[i+2])='A'then
           if UpperCase(dataToken[i+3])='L'then
                writeln('tipe data real');
        
        //char check
        if UpperCase(dataToken[i+0])='C'then
         if UpperCase(dataToken[i+1])='H'then
          if UpperCase(dataToken[i+2])='A'then
           if UpperCase(dataToken[i+3])='R'then
                writeln('tipe data char');
        
        //char check
        if UpperCase(dataToken[i])='S'then
         if UpperCase(dataToken[i+1])='T'then
          if UpperCase(dataToken[i+2])='R'then
           if UpperCase(dataToken[i+3])='I'then
            if UpperCase(dataToken[i+4])='N'then
             if UpperCase(dataToken[i+5])='G'then
                writeln('tipe data string');

       
       i+=1;
    
    end;//endwhile
 
 Writeln;

end.