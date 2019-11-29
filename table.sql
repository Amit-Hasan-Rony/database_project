drop table vote_information;
drop table symbol_table;
drop table centre_table;
drop table candidate_table;
drop table voter_table;
drop table count_table;


create table candidate_table(
             candidate_ID_no number(11),
			 candidate_name varchar(50),
			 candidate_contact_number varchar(11),
			 candidate_address varchar(50),
			 primary key(candidate_ID_no)
			 );
			 
create table voter_table(
             voter_ID_no number(11),
			 voter_name varchar(50),
			 voter_contact_number varchar(11),
			 voter_address varchar(50),
			 primary key(voter_ID_no)
			 );
			 
create table centre_table(
             centre_ID_no number(5),
			 centre_name varchar(50),
			 centre_address varchar(50),
			 primary key(centre_ID_no)
			 );
			 
create table symbol_table(
             symbol_name varchar(50),
			 symbol_description varchar(50),
			 candidate_ID_no number(11),
			 primary key(symbol_name),
			 foreign key(candidate_ID_no) references candidate_table
			 );
			 
create table vote_information(
             voter_ID_no number(11),
			 symbol_name varchar(50),
			 centre_ID_no number(5),
			 voting_time varchar(20),
			 voting_date varchar(20),
			 primary key(voter_ID_no),
			 foreign key(voter_ID_no) references voter_table,
			 foreign key(centre_ID_no) references centre_table,
			 foreign key(symbol_name) references symbol_table
			 );
			 
create table count_table(
             candidate_name varchar(50),
			 candidate_symbol varchar(50),
			 total_votes number(11),
			 primary key(candidate_symbol)
			 );