set serveroutput on
  declare 
    c_name candidate_table.candidate_name%type;
    s_name candidate_table.candidate_name%type;
	type namearray is varray(10) of candidate_table.candidate_name%type;
	c_name_array namearray:=namearray();
    s_name_array namearray:=namearray();

    type countarray is varray(10) of candidate_table.candidate_ID_no%type;
    count_array countarray:=countarray();
    loop_count candidate_table.candidate_ID_no%type:=0;
    total_symbol candidate_table.candidate_ID_no%type:=0;
    c_votes candidate_table.candidate_ID_no%type:=0;
	
  begin	
    select count(*) into total_symbol from symbol_table;
	loop_count:=0;
	c_votes:=500;
	LOOP 
	   s_name_array.extend();
	   loop_count:=loop_count+1;
	   exit when loop_count>total_symbol;
	   c_votes:=c_votes+1;
	   select symbol_name into s_name from symbol_table where candidate_ID_no=c_votes;
	   s_name_array(loop_count):=s_name;
	end loop;
	
	loop_count:=0;
	LOOP
	   c_name_array.extend();
	   loop_count:=loop_count+1;
	   exit when loop_count>total_symbol;
	   s_name:=s_name_array(loop_count);
	   p_findname(s_name,c_name);
	   c_name_array(loop_count):=c_name;
	end loop;
	
	loop_count:=0;
	LOOP
	   count_array.extend();
	   loop_count:=loop_count+1;
	   exit when loop_count>total_symbol;
	   s_name:=s_name_array(loop_count);
	   count_total_votes(s_name,c_votes);
	   count_array(loop_count):=c_votes;
	   DBMS_OUTPUT.PUT_LINE(count_array(loop_count));
	end loop;
	
	loop_count:=0;
	LOOP
	   loop_count:=loop_count+1;
	   exit when loop_count>total_symbol;
	   c_name:=c_name_array(loop_count);
	   s_name:=s_name_array(loop_count);
	   c_votes:=count_array(loop_count);
	   insert_information(c_name,s_name,c_votes);
	end loop;
	
end;
/
	   