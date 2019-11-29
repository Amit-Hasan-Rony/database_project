create or replace trigger t_name 
before update of symbol_name ON symbol_table
for each row
  declare
    before_symbol symbol_table.symbol_name%type;
	after_symbol symbol_table.symbol_name%type;
	v_id candidate_table.candidate_ID_no%type;
	flag candidate_table.candidate_ID_no%type:=0;
  begin
    before_symbol:=:old.symbol_name;
	after_symbol:=:new.symbol_name;
	declare
	  cursor ct is
	  select voter_ID_no from vote_information where symbol_name=before_symbol;
	begin
	  open ct;
	  select count(*) into flag from count_table where candidate_symbol=before_symbol;
	  LOOP 
	     fetch ct into v_id;
		 exit when ct%notfound;
		 update vote_information set symbol_name=after_symbol where voter_ID_no=v_id;
	  end loop;
    end;	  
	if flag>0 then
	  update count_table set candidate_symbol=after_symbol where candidate_symbol=before_symbol;
	end if;
	
end;
/
		 
	