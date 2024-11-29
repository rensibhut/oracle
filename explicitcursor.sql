set serveroutput on;
DECLARE
	id emp.empno%type;
	nm emp.ename%type;
	sal emp.sal%type;
	CURSOR cs is select empno,ename,sal from emp;
begin
	open cs;
	LOOP
		fetch cs into id,nm,sal;
		exit when cs%notfound;
		dbms_output.put_line('ID:'||id||' NAME:'||nm||' SAL:'||sal);
	end loop;
	close cs;
end;
/

/*
SQL> @c:\diya\explicitcursor.sql;
ID:7369NAME:SMITHSAL:800
ID:7499NAME:ALLENSAL:1600
ID:7521NAME:WARDSAL:1250
ID:7566NAME:JONESSAL:2975
ID:7654NAME:MARTINSAL:1250
ID:7698NAME:BLAKESAL:2850
ID:7782NAME:CLARKSAL:2450
ID:7788NAME:SCOTTSAL:3000
ID:7839NAME:KINGSAL:5000
ID:7844NAME:TURNERSAL:1500
ID:7876NAME:ADAMSSAL:1100
ID:7900NAME:JAMESSAL:950
ID:7902NAME:FORDSAL:3000
ID:7934NAME:MILLERSAL:1300

PL/SQL procedure successfully completed.
*/