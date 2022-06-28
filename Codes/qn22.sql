DECLARE
    no_count integer;
    cursor c_emp IS select rollno,name,mark1,mark2,mark3 from student6;
    c_rtp c_emp%rowtype;
BEGIN
    open c_emp;
    dbms_output.put_line('ID NAME Mark1 Mark2 Mark3');
    LOOP
    FETCH c_emp INTO c_rtp ;
    EXIT WHEN ((c_emp%notfound));
    dbms_output.put_line(c_rtp.rollno||' '||c_rtp.name||' '||c_rtp.mark1||' '||c_rtp.mark2||' '||c_rtp.mark3);
    END LOOP;
    close c_emp;
END;
/