set serveroutput on
declare
   s_roll student_table.student_roll%type;
   s_name student_table.student_name%type;
   s_department student_table.student_name%type;
   s_contact student_table.student_roll%type;
   f utl_file.file_type;
   line varchar(10000);
begin
   f:=utl_file.fopen('MYD','test_file.csv','R');
   if utl_file.is_open(f) then
      utl_file.get_line(f,line,10000);
      loop
	     begin 
		    utl_file.get_line(f,line,10000);
			s_roll:=regexp_substr(line,'[^,]+',1,1);
			s_name:=regexp_substr(line,'[^,]+',1,2);
			s_department:=regexp_substr(line,'[^,]+',1,3);
			s_contact:=regexp_substr(line,'[^,]+',1,4);
			insert into student_table(student_roll,student_name,student_department,student_contact)values(s_roll,s_name,s_department,s_contact);
			commit;
			exception when no_data_found then exit;
		end;
	  end loop;
	end if;
	utl_file.fclose(f);
end;
/