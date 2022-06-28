DECLARE
    Employee_id number;
    Amount number;
    no_count number;
BEGIN
    Employee_id:=&Employee_id;
    Amount:=&Amount;
    UPDATE employeepl set salary = (salary+Amount) where id = Employee_id;
    if sql%notfound then
        dbms_output.put_line('No records found');
    ELSIF sql%found THEN
        no_count:=sql%rowcount;
        dbms_output.put_line(no_count|| ' records updated successfully');
    end IF;
END;
/