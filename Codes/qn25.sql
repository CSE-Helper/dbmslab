DECLARE
    no_count integer;
    cursor c_customer IS select customer_number,customer_name,customer_city from customer 
    where customer_name in (select customer_name from depositor) and customer_name in (select customer_name from borrower);
    c_rtp c_emp%rowtype;
BEGIN
    open c_emp;
    dbms_output.put_line('ID NAME city');
    LOOP
    FETCH c_emp INTO c_rtp ;
    EXIT WHEN ((c_emp%notfound));
    dbms_output.put_line(customer_number||' '||c_rtp.customer_name||' '||c_rtp.customer_city);
    END LOOP;
    close c_emp;
END;
/