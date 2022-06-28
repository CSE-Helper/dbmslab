DECLARE
    radius integer;
    area number;
BEGIN
    radius := &radius;
    area:=(radius*radius*3.14);
    insert into circle values(radius,area);
END;
/