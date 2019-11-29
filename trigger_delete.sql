create or replace trigger tt_name 
before delete ON candidate_table
for each row
declare
   c_id candidate_table.candidate_ID_no%type;
   c_name candidate_table.candidate_name%type;
   s_name candidate_table.candidate_name%type;
   flag candidate_table.candidate_ID_no%type:=0;
begin
   c_id:=:old.candidate_ID_no;
   select symbol_name into s_name from symbol_table where candidate_ID_no=c_id;
   delete from vote_information where symbol_name=s_name;
   delete from symbol_table where symbol_name=s_name;
   select count(*) into flag from count_table where candidate_symbol=s_name;
   if flag>0 then
     delete from count_table where candidate_symbol=s_name;
   end if;
end;
/
   
   