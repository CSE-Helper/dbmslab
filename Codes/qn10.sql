declare
n number := &n;
a number;
begin
a := mod(n,2);
if a=0
then
dbms_output.put_line('even');
else
dbms_output.put_line('odd');
end if;
end;
/
