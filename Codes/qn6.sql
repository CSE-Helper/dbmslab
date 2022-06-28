DECLARE
grade char(1);
BEGIN
grade := '&Enter_grade';
case grade
when 'A' then dbms_output.put_line('Excellent');
when 'B' then dbms_output.put_line('Very Good');
when 'C' then dbms_output.put_line('Good');
when 'D' then dbms_output.put_line('Average');
when 'F' then dbms_output.put_line('Fail');
end case;
END;
/
