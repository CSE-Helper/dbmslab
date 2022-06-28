DECLARE
    no_count number;
    did number;
BEGIN
    did:=&did;
    UPDATE employeepl set salary = (salary*1.1) where id = did;
    if sql%notfound then
        dbms_output.put_line('No records found');
    ELSIF sql%found THEN
        no_count:=sql%rowcount;
        dbms_output.put_line(no_count|| ' records updated');
    end IF;
END;
/