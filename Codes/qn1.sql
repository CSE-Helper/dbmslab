DECLARE
 a varchar(20);
BEGIN
    a:='&a';
    DBMS_OUTPUT.PUT_LINE(a);
    DECLARE
        cursor c_employee IS SELECT first_name,salary from employee
        WHERE designation=a;
        c_rtp c_employee%rowtype;

    BEGIN

        open c_employee;
        DBMS_OUTPUT.PUT_LINE('NAME  SALARY');
        LOOP
        FETCH c_employee INTO c_rtp;
        EXIT WHEN c_employee%notfound;
        DBMS_OUTPUT.PUT_LINE(c_rtp.first_name||' '||c_rtp.salary);
        END LOOP;
    END;
END;
/

