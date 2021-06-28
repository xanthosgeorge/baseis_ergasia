create table vehicle_accountinginfo(
	licence_number VARCHAR(50) not null,
	serial_number numeric not null,
	year numeric,
	primary key (licence_number),
	foreign key(serial_number) references vehicles_technical(serial_number)
);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΙΚΚ4125',2000515,2011);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΗΡΑ6974',1698029,2009);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΡΕΙ2413',5144818,2005);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΚΑΙ5785',2562523,2011);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΙΟΚ5874',1379457,1982);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΙΥΡ8545',2102982,2012);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΧΑΙ5632',9777952,2009);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΙΚΑ2541',7272357,1993);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΧΕΙ5214',7451679,2010);
insert into vehicle_accountinginfo (licence_number, serial_number, year) values ('ΧΑΝ3014',2285159,2011);