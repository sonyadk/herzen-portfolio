program z1;
procedure pr;
var s: real;
    d: integer;
begin
  s:=1;  
  Writeln ('|---------|-------------|');
  Writeln('| Дюймы   |  Сантиметры |');
  Writeln ('|---------|-------------|');
  for d:=0 to 100 do begin
  s:=d*2.5;
  writeln('|', d:4:2, ' | ', s:4:2, '|');
 
  end;
  Writeln ('|---------|-------------|');
end;
begin
pr();
readln();
end.
