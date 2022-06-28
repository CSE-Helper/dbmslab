DECLARE
a number := &subject1;
b number := &subject2;
c number := &subject3;
d number := &subject4;
e number := &subject5;
f number := &subject6;
sumOf6 NUMBER;
avgOf6 NUMBER;
BEGIN
sumOf6 := a + b + c + d + e + f;
avgOf6 := sumOf6 / 6;
dbms_output.Put_line('Sum = '||sumOf6);
dbms_output.Put_line('Average = '||avgOf6);
END;
/
