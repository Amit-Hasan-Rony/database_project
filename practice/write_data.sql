set serveroutput on
declare
   f utl_file.file_type;
   cursor ct is select student_roll,student_name,student_department,student_contact from student_table;
   line varchar(10000);
   s_roll student_table.student_roll%type;
   s_name student_table.student_name%type;
   s_department student_table.student_department%type;
   s_contact student_table.student_contact%type;
   
   
begin
   f:=utl_file.fopen('MYD','result.csv','W');
   utl_file.put(f,'student_roll'||','||'student_name'||','||'student_department'||','||'student_contact');--for header........
   utl_file.new_line(f);
   open ct;
   LOOP
    fetch ct into s_roll,s_name,s_department,s_contact;
	utl_file.put(f,s_roll||','||s_name||','||s_department||','||s_contact);
	utl_file.new_line(f);
    exit when ct%notfound;
  end loop;
end;
/
     
   