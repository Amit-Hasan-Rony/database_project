create or replace procedure p_findname(s_name IN varchar2,c_name out varchar2) is
    begin
       select candidate_name into c_name from candidate_table where candidate_ID_no in(select candidate_ID_no from symbol_table where symbol_name=s_name);
    end;
    /


create or replace procedure count_total_votes(s_name IN varchar2,t_votes OUT number) is
    begin
	   select count(*) into t_votes from vote_information where symbol_name=s_name;
	end;
	/
	
	
	
create or replace procedure insert_information(c_name IN varchar2,s_name IN varchar2,t_votes IN number) is
    begin
	   insert into count_table(candidate_name,candidate_symbol,total_votes)values(c_name,s_name,t_votes);
	   commit;
	end;
	/