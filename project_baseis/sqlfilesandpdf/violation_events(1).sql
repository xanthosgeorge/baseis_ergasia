create table violation_events (
	id INT,
	violation_code numeric,
	violation_date varchar(50),
	violation_time varchar(50),
	insurance_contract numeric,
	primary key (id),
	foreign key (insurance_contracts) references insurance_contracts(contract_code)
);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (1, '34904', '7/19/2020', '20:27', 1758036796);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (2, '1448', '5/1/2021', '2:08',  3047942730);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (3, '7154', '7/5/2020', '21:58', 4810370135);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (4, '0154', '4/22/2021', '23:19', 5404242817);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (5, '91', '9/28/2020', '17:12', 8034135429);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (6, '3036', '3/21/2021', '23:07', 9115464814);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (7, '52354', '8/5/2020', '16:46', 1758036796);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (8, '02', '10/26/2020', '11:00', 8492844388);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (9, '68', '12/2/2020', '18:23', 0173328954);
insert into violation_events (id, violation_code, violation_date, violation_time, insurance_contract) values (10, '378', '1/17/2021', '17:51', 4810370135);
