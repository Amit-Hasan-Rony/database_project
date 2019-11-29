select * from symbol_table;
select * from vote_information;
select * from count_table;

update symbol_table set symbol_name='Black rose' where symbol_name='red_rose';

select * from symbol_table;
select * from vote_information;
select * from count_table;

delete from candidate_table where candidate_name='Amit Hasan Rony';

select * from candidate_table;
select * from symbol_table;
select * from vote_information;
select * from count_table;