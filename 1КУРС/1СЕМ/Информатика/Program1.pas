program z3;
var a, b, i, s, x, h: real; 
n: integer;
begin
readln(n);
a:=0.4; b:=1.4;
h:=(b-a)/n;
 writeln('шаг при n=',n, ': ', h);
s:=0;

s:=s+((cos(0.8*a*a+1)/(1.4+sin(0.3*a+0.5)))+cos(0.8*b*b+1)/(1.4+sin(0.3*b+0.5)))/2;

x:=a+h;

while x<=(b-h) do begin
s:=s+(cos(0.8*x*x+1)/(1.4+sin(0.3*x+0.5)));
x:=x+h;
end;

i:=h*s;
writeln('результат при n=',n,': ', i);

end.