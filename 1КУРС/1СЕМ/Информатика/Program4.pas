program z1;
procedure pr;
var s: real;
    d: integer;
begin
  s:=1;  
  Writeln ('|---------|------------|');
  Writeln('| Дюймы   | Сантиметры |');
  Writeln ('|---------|------------|');
  for d:=0 to 100 do begin
  s:=d*2.5;
  
  if (d<=3) then
  writeln('|  ' ,d, '      |   ',s:4:2, '     |') ;
  
  if (d>3) and (d<=9) then
  writeln('|  ' ,d, '      |   ',s:4:2, '    |') ;
  
  if (d=10) then
  writeln('|  ' ,d, '     |   ',s:4:2, '    |') ;
  
  if  (d>10) and (d<40) then
  writeln('|  ' ,d, '     |   ',s:4:2, '    |') ;
  
  if (d>=40) and (d<100) then  
  writeln('|  ' ,d,'     |   ',s:4:2, '   |') ;
  
  if d=100 then
  writeln('|  ' ,d, '    |   ',s:4:2, '   |') ;
  end;
  Writeln ('|---------|------------|');
end;
begin
pr();
readln();
end.