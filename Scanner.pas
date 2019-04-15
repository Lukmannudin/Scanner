// Program ini dibuat di visual studio code
// Di compile menggunakan Free Pascal (FPC)
// Jika program ini di compile menggunakan dev-pas maka akan ada error di beberapa line code
program Scanner;
Uses sysutils;
type
    rec_token = record
        token: char;
        category: string;
    end;    
var 
    ch : char;
    theFile : File of char;
    i : integer;
    FP:Integer;
    sizeOfChar:integer;
    dataToken: array of Char;
    totalToken:integer;
    tokens: array of rec_token;

    intcon,realcon,charcon,stringt,notsy,plus,minus,times,idiv,rdiv,imod,andsy,orsy,egl,neg,gtr,geg,lss,leg,lparent,rparent,lbrack,rbrack,comma,semicolon,period,colon,becomes,constsy,typesy,varsy,functionsy,proceduresy,arraysy,recordsy,programsy,ident,beginsy,ifsy,casesy,repeatsy,whilesy,forsy,endsy,elsesy,untilsy,ofsy,dosy,tosy,downtosy,thensy,typeint,typechar,typereal : integer;

    function countChar():integer;
    var
        z:integer;
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
    intcon:= 0;realcon:=0;charcon:=0;stringt:=0;notsy:=0;plus:=0;minus:=0;times:=0;idiv:=0;rdiv:=0;imod:=0;
    andsy:=0;orsy:=0;egl:=0;neg:=0;gtr:=0;geg:=0;lss:=0;leg:=0;lparent:=0;rparent:=0;lbrack:=0;comma:=0;rbrack:=0;
    semicolon:=0;period:=0;colon:=0;becomes:=0;constsy:=0;typesy:=0;varsy:=0;functionsy:=0;proceduresy:=0;
    arraysy:=0;recordsy:=0;programsy:=0;ident:=0;beginsy:=0;ifsy:=0;casesy:=0;repeatsy:=0;whilesy:=0;
    forsy:=0;endsy:=0;elsesy:=0;untilsy:=0;ofsy:=0;dosy:=0;tosy:=0;downtosy:=0;thensy:=0;typeint:=0;
    typechar:=0;typereal:=0;
    
    SetLength(dataToken,countChar());
    charLoad(dataToken);
    i:=0;
    // while i<>countChar do
    write(dataToken[0],dataToken[1],dataToken[2],dataToken[3],dataToken[4],dataToken[5],dataToken[6]);
    writeln('|          TOKEN          |');
    for i:=0 to countChar do
     begin
        //integer check
        if  (UpperCase(dataToken[i])='I') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='T') and 
            (UpperCase(dataToken[i+3])='E') and 
            (UpperCase(dataToken[i+4])='G') and
            (UpperCase(dataToken[i+5])='E') and
            (UpperCase(dataToken[i+6])='R') then
            begin
                intcon +=1;
                writeln('tipe data integer');
            end
        else
        if  (UpperCase(dataToken[i+0])='R') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='A') and 
            (UpperCase(dataToken[i+3])='L') then
            begin
                realcon+=1;
                writeln('tipe data real');
            end
        else
        if (UpperCase(dataToken[i+0])='C') and 
            (UpperCase(dataToken[i+1])='H') and 
            (UpperCase(dataToken[i+2])='A') and 
            (UpperCase(dataToken[i+3])='R') then
            begin
                charcon += 1;
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
                stringt +=1;
                writeln('tipe data string');
            end
        else
        if  (UpperCase(dataToken[i+0])='N') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='T') then
            begin
                notsy += 1;
                writeln('operator not');
            end
        else
        if  (UpperCase(dataToken[i+0])='+') then
            begin
                plus += 1;
                writeln('operator +');
            end
        else
        if  (UpperCase(dataToken[i+0])='-') then
            begin
                minus += 1;
                writeln('operator -');
            end
        else    
        if  (UpperCase(dataToken[i+0])='*') then
            begin
                times += 1;
                writeln('operator *');
            end
        else
        if  (UpperCase(dataToken[i+0])='D') and 
            (UpperCase(dataToken[i+1])='I') and 
            (UpperCase(dataToken[i+2])='V') then
            begin
                idiv += 1;
                writeln('operator div');
            end
        else
        if  (UpperCase(dataToken[i+0])='/') then 
            begin
                rdiv += 1;
                writeln('operator /');
            end
        else
        if  (UpperCase(dataToken[i+0])='M') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='D') then
            begin
                imod += 1;
                writeln('operator mod');
            end
        else
        if  (UpperCase(dataToken[i+0])='A') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='D') then
            begin
                andsy += 1;
                writeln('operator and');
            end
        else
        if  (UpperCase(dataToken[i+0])='O') and 
            (UpperCase(dataToken[i+1])='R') then
            begin
                orsy += 1;
                writeln('operator or');
            end
        else
        if  (UpperCase(dataToken[i+0])='=') then
            begin
                egl+=1;
                writeln('operator =');
            end
        else
        if  (UpperCase(dataToken[i+0])='<') then
            begin
                if (UpperCase(dataToken[i+1])='=') then
                 begin
                    writeln('operator <=');
                    leg+=1;
                 end else if(UpperCase(dataToken[i+1])='>') then
                   begin
                     writeln('operator <>');
                     neg +=1;
                   end else 
                        lss+=1;
                        writeln('operator <');
            end
        else 
        if  (UpperCase(dataToken[i+0])='(') then
            begin
                lparent += 1;
                writeln('operator (');
            end
        else  
        if  (UpperCase(dataToken[i+0])=')') then
            begin
                rparent += 1;
                writeln('operator )');
            end
        else 
        if  (UpperCase(dataToken[i+0])='>') then
            begin
                if (UpperCase(dataToken[i+1])='=') then
                 begin
                    writeln('operator >=');
                    geg+=1;
                 end else 
                     gtr +=1;
                     writeln('operator >');
            end
        else 
        if  (UpperCase(dataToken[i+0])='[') then
            begin
                lbrack += 1;
              writeln('simbol [');
            end
        else 
        if  (UpperCase(dataToken[i+0])=']') then
            begin
                rbrack += 1;
              writeln('simbol ]');
            end
        else
        if  (UpperCase(dataToken[i+0])=',') then
            begin
            comma +=1;
              writeln('simbol ,');
            end
        else
        if  (UpperCase(dataToken[i+0])=';') then
            begin
                semicolon += 1;
              writeln('simbol ;');
            end
        else
        if  (UpperCase(dataToken[i+0])='.') then
            begin
                period += 1;
              writeln('simbol .');
            end
        else
        if  (UpperCase(dataToken[i+0])=':') then
            begin
              if (UpperCase(dataToken[i+1])='=') then
                begin
                  writeln('operator :=');
                  becomes +=1;
                end else 
                    colon += 1;
                    writeln('operator :');
            end
        else
        if  (UpperCase(dataToken[i+0])='C') and 
            (UpperCase(dataToken[i+1])='O') and 
            (UpperCase(dataToken[i+2])='N') and 
            (UpperCase(dataToken[i+3])='S') and 
            (UpperCase(dataToken[i+4])='T') then
            begin
                constsy +=1;
                writeln('keyword const');
            end
        else
        if  (UpperCase(dataToken[i])='V') and 
            (UpperCase(dataToken[i+1])='A') and 
            (UpperCase(dataToken[i+2])='R') then
            begin
                varsy +=1;
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
            functionsy +=1;
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
                proceduresy +=1;
                writeln('keyword procedure');
            end
        else  
        if  (UpperCase(dataToken[i+0])='A') and 
            (UpperCase(dataToken[i+1])='R') and 
            (UpperCase(dataToken[i+2])='R') and 
            (UpperCase(dataToken[i+3])='A') and 
            (UpperCase(dataToken[i+4])='Y') then
            begin
                arraysy +=1;
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
                period +=1;
                writeln('keyword record');
            end
        else  
        if  (UpperCase(dataToken[i])='P') and 
            (UpperCase(dataToken[i+1])='R') and 
            (UpperCase(dataToken[i+2])='O') and 
            (UpperCase(dataToken[i+3])='G') and 
            (UpperCase(dataToken[i+4])='R') and
            (UpperCase(dataToken[i+5])='A') and 
            (UpperCase(dataToken[i+6])='M') then
            begin
                programsy +=1;
                writeln('keyword program');
            end  
        else   
        if  (UpperCase(dataToken[i+0])='B') and 
            (UpperCase(dataToken[i+1])='E') and 
            (UpperCase(dataToken[i+2])='G') and 
            (UpperCase(dataToken[i+3])='I') and 
            (UpperCase(dataToken[i+4])='N') then
            begin
                beginsy +=1;
                writeln('keyword begin');
            end
        else    
        if  (UpperCase(dataToken[i+0])='I') and 
            (UpperCase(dataToken[i+1])='F') then
            begin
                ifsy +=1;
                writeln('keyword if');
            end
        else   
        if  (UpperCase(dataToken[i+0])='C') and 
            (UpperCase(dataToken[i+1])='A') and 
            (UpperCase(dataToken[i+2])='S') and 
            (UpperCase(dataToken[i+3])='E') then
            begin
                casesy +=1;
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
                repeatsy +=1;
                writeln('keyword repeat');
            end
        else    
        if  (UpperCase(dataToken[i+0])='W') and 
            (UpperCase(dataToken[i+1])='H') and 
            (UpperCase(dataToken[i+2])='I') and 
            (UpperCase(dataToken[i+3])='L') and 
            (UpperCase(dataToken[i+4])='E') then
            begin
                whilesy +=1;
                writeln('keyword while');
            end
        else   
           
        if  (UpperCase(dataToken[i+0])='E') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='D') then
            begin
                endsy +=1;
                writeln('keyword end');
            end
        else    
        if  (UpperCase(dataToken[i+0])='E') and 
            (UpperCase(dataToken[i+1])='L') and 
            (UpperCase(dataToken[i+2])='S') and 
            (UpperCase(dataToken[i+3])='E') then
            begin
                elsesy +=1;
                writeln('keyword else');
            end
        else    
        if  (UpperCase(dataToken[i+0])='U') and 
            (UpperCase(dataToken[i+1])='N') and 
            (UpperCase(dataToken[i+2])='T') and 
            (UpperCase(dataToken[i+3])='I') and 
            (UpperCase(dataToken[i+4])='L') then
            begin
                untilsy +=1;
                writeln('keyword until');
            end
        else     
        if  (UpperCase(dataToken[i+0])='O') and 
            (UpperCase(dataToken[i+1])='F') then
            begin
                ofsy +=1;
                writeln('keyword of');
            end
        else     
        if  (UpperCase(dataToken[i+0])='D') and 
            (UpperCase(dataToken[i+1])='O') then
            begin
                dosy +=1;
                writeln('keyword do');
            end
        else    
        if  (UpperCase(dataToken[i+0])='T') and 
            (UpperCase(dataToken[i+1])='O') then
            begin
                tosy +=1;
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
                downtosy +=1;
                writeln('keyword downto');
            end
        else   
        if  (UpperCase(dataToken[i+0])='T') and 
            (UpperCase(dataToken[i+1])='H') and 
            (UpperCase(dataToken[i+2])='E') and 
            (UpperCase(dataToken[i+3])='N') then
            begin
                thensy +=1;
                writeln('keyword then');
            end
        else 
     
    end;//endfor
    writeln();
    writeln();
    totalToken := intcon + realcon + charcon + stringt + notsy + plus + minus + times + idiv + rdiv + imod + andsy + orsy + egl + neg + gtr + geg + lss + leg + lparent + rparent + lbrack + rbrack + comma + semicolon + period + colon + becomes + constsy + typesy + varsy + functionsy + proceduresy + arraysy + recordsy + programsy + ident + beginsy + ifsy + casesy + repeatsy + whilesy + forsy + endsy + elsesy + untilsy + ofsy + dosy + tosy + downtosy + thensy + typeint + typechar + typechar;

    writeln('intcon :',intcon);
    writeln('realcon :',realcon);
    writeln('charcon :',charcon);
    writeln('stringt :',stringt);
    writeln('notsy:',notsy);
    writeln('plus :',plus);
    writeln('minus :',minus);
    writeln('times :',times);
    writeln('idiv :',idiv);
    writeln('rdiv :',rdiv);
    writeln('imod :',imod);
    writeln('andsy :',andsy);
    writeln('orsy :',orsy);
    writeln('egl :',egl);
    writeln('neg :',neg);
    writeln('gtr :',gtr);
    writeln('geg :',geg);
    writeln('lss :',lss);
    writeln('leg :',leg);
    writeln('lparent :',lparent);
    writeln('lbrack :',lbrack);
    writeln('rbrack :',rbrack);
    writeln('comma :',comma);
    writeln('semicolon :',semicolon);
    writeln('colon :',colon);
    writeln('becomes :',becomes);
    writeln('constsy :',constsy);
    writeln('typesy :',typesy);
    writeln('varsy :',varsy);
    writeln('functionsy :',functionsy);
    writeln('proceduresy :',proceduresy);
    writeln('arraysy :',arraysy);
    writeln('recordsy :',recordsy);
    writeln('programsy :',programsy);
    writeln('identifier :',ident);
    writeln('beginsy :',beginsy);
    writeln('ifsy :',ifsy);
    writeln('casesy :',casesy);
    writeln('whilesy :',whilesy);
    writeln('forsy :',forsy);
    writeln('endsy :',endsy);
    writeln('elsesy :',elsesy);
    writeln('untilsy :',untilsy);
    writeln('ofsy :',ofsy);
    writeln('dosy :',dosy);
    writeln('tosy :',tosy);
    writeln('downtosy :',downtosy);
    writeln('typeint :',typeint);
    writeln('typechar :',typechar);
    writeln('typereal :',typereal);
 Writeln;

end.