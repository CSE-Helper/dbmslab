DECLARE
    no_count integer;
    cursor c_emp IS select id,name,salary from employeepl order by salary desc;
    c_rtp c_emp%rowtype;
BEGIN
    open c_emp;
    no_count:=&no_count;
    dbms_output.put_line('ID NAME SALARY');
    LOOP
    FETCH c_emp INTO c_rtp ;
    EXIT WHEN ((no_count=0) or (c_emp%notfound));
    dbms_output.put_line(c_rtp.id||' '||c_rtp.name||' '||c_rtp.salary);
    no_count:=no_count-1;
    END LOOP;
    close c_emp;
END;
/