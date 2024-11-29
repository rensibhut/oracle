set serveroutput on;
DECLARE
      no1 char(10);
 BEGIN
     no1:='&no';
	 
      CASE no1
        when '1' then
          dbms_output.put_line('+ve');
        when 'a' then
         dbms_output.put_line('-ve');
		else
		 dbms_output.put_line('zero');
       end CASE;
   END;
 /
/*

 SQL>   @c:\diya\case.sql;
Enter value for no: 1
old   4:      no1:='&no';
new   4:      no1:='1';
+ve

PL/SQL procedure successfully completed.

SQL>   @c:\diya\case.sql;
Enter value for no: a
old   4:      no1:='&no';
new   4:      no1:='a';
-ve

PL/SQL procedure successfully completed.

SQL>   @c:\diya\case.sql;
Enter value for no: 4
old   4:      no1:='&no';
new   4:      no1:='4';
zero

PL/SQL procedure successfully completed.

SQL>   @c:\diya\case.sql;
Enter value for no: 0
old   4:      no1:='&no';
new   4:      no1:='0';
zero

PL/SQL procedure successfully completed.
