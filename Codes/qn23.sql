DECLARE
    Employee_id number;
    no_count number;
BEGIN
    Employee_id:=&Employee_id;
    UPDATE employeepl set salary = (salary-2000) where id = Employee_id AND salary = 2500;
    if sql%notfound then
        dbms_output.put_line('No records found');
    ELSIF sql%found THEN
        no_count:=sql%rowcount;
        dbms_output.put_line(no_count|| ' records updated successfully');
    end IF;
END;
/