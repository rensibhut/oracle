set serveroutput on;
DECLARE
 no1 number(20);
BEGIN
	no1:=&no;
	case
		when no1>0 then
			dbms_output.put_line('+ve');
		