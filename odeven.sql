set serveroutput on;
DECLARE
	amt number(10);
BEGIN
	amt:=20;
	if(mod (amt,2)=0)then
		dbms_output.put_line('EVEN');
	else
		dbms_output.put_line('ODD');
	end if;
END;
/