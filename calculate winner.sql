set serveroutput on
declare
   c_name candidate_table.candidate_name%type;
   s_name candidate_table.candidate_name%type;
   t_votes candidate_table.candidate_ID_no%type;
   max_votes candidate_table.candidate_ID_no%type;
   winner_number candidate_table.candidate_ID_no%type;
   
begin
   select max(total_votes) into max_votes from count_table;
   select count(*) into winner_number from count_table where total_votes=max_votes;
   if winner_number>1 then
     DBMS_OUTPUT.PUT_LINE('There are more than one candidate got the same votes');
   end if;
   declare
     cursor ct is select * from count_table where total_votes=max_votes;
   begin
     open ct;
	 LOOP
	   fetch ct into c_name,s_name,t_votes;
	   exit when ct%notfound;
	   DBMS_OUTPUT.PUT_LINE(c_name||'belongs to '||s_name||' got total '||max_votes);
	 end loop;
   end;
end;
/