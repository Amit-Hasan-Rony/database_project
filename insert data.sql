insert into candidate_table(candidate_ID_no,candidate_name,candidate_contact_number,candidate_address)
                                  values(501,'Amit Hasan Rony','01551811949','Khulna, bandladesh');
insert into candidate_table(candidate_ID_no,candidate_name,candidate_contact_number,candidate_address)
                                  values(502,'Nazmul Hasan Johny','01521328449','Rangpur, bandladesh');
insert into candidate_table(candidate_ID_no,candidate_name,candidate_contact_number,candidate_address)
                                  values(503,'Jannatul Monny','01689712425','Gazipur, bandladesh');
insert into candidate_table(candidate_ID_no,candidate_name,candidate_contact_number,candidate_address)
                                  values(504,'Rawnak Jahan','01551811949','Dhaka, bandladesh');
insert into candidate_table(candidate_ID_no,candidate_name,candidate_contact_number,candidate_address)
                                  values(505,'Hasib Rahman','01512345678','Khulna, bandladesh');
								  
								  
								  
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(601,'A','1234','AA');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(602,'B','1234','AB');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(603,'C','1234','AC');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(604,'D','1234','AD');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(605,'E','1234','AE');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(606,'F','1234','AF');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(607,'G','1234','AG');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(608,'H','1234','AH');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(609,'I','1234','AI');
insert into voter_table(voter_ID_no,voter_name,voter_contact_number,voter_address)
                                  values(610,'J','1234','AJ');
								  
								  
								  
insert into centre_table(centre_ID_no,centre_name,centre_address)values(1,'gazipur shadar1','gazipr shadar, gazipur');
insert into centre_table(centre_ID_no,centre_name,centre_address)values(2,'gazipur shadar2','gazipr shadar, gazipur');
insert into centre_table(centre_ID_no,centre_name,centre_address)values(3,'gazipur shadar3','gazipr shadar, gazipur');
insert into centre_table(centre_ID_no,centre_name,centre_address)values(4,'gazipur shadar4','gazipr shadar, gazipur');
insert into centre_table(centre_ID_no,centre_name,centre_address)values(5,'gazipur shadar5','gazipr shadar, gazipur');


insert into symbol_table(symbol_name,symbol_description,candidate_ID_no)values('water_lily','A white water_lily',501);
insert into symbol_table(symbol_name,symbol_description,candidate_ID_no)values('red_rose','A red rose',502);
insert into symbol_table(symbol_name,symbol_description,candidate_ID_no)values('sunflower','A yellow sunflower',503);
insert into symbol_table(symbol_name,symbol_description,candidate_ID_no)values('orchid','A white orchid',504);
insert into symbol_table(symbol_name,symbol_description,candidate_ID_no)values('merry_gold','A yellow merry_gold',505);


insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(601,'water_lily',1,'10:20','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(602,'red_rose',3,'10:30','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(603,'red_rose',5,'10:40','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(604,'water_lily',1,'10:50','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(605,'sunflower',5,'10:55','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(606,'water_lily',2,'10:33','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(607,'orchid',2,'10:44','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(608,'merry_gold',3,'10:54','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(609,'merry_gold',1,'10:20','15-05-2018');
insert into vote_information(voter_ID_no,symbol_name,centre_ID_no,voting_time,voting_date)values(610,'orchid',5,'10:12','15-05-2018');

commit;
								  