DECLARE
    no_count number;
BEGIN
    UPDATE employeepl set salary = salary+1000 where salary < 2000;
    if sql%notfound then
        dbms_output.put_line('No records found');
    ELSIF sql%found THEN
        no_count:=sql%rowcount;
        dbms_output.put_line(no_count|| ' records updated');
    end IF;
END;
/