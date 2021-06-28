create table drives(
	id int NOT NULL PRIMARY KEY,
	driver_licence_number numeric NOT NULL FOREIGN KEY references driver (driver_licence_number),
	vehicle_licence_number VARCHAR(50) not null foreign key references vehicle_acccountinginfo (licence_number),
	drives_driver_driver_licence_number_fk FOREIGN KEY REFERENCES driver (driver_licence_number),
	
);
insert into drives (id, driver_licence_number, vehicle_licence_number) values (1,801024296,'ΙΚΚ4125');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (2,176208164,'ΗΡΑ6974');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (3,450305575,'ΡΕΙ2413');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (4,426138151,'ΚΑΙ5785');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (5,808998990,'ΙΟΚ5874');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (6,920712217,'ΙΥΡ8545');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (7,772077511,'ΧΑΙ5632');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (8,213476894,'ΙΚΑ2541');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (9,111107043,'ΧΕΙ5214');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (10,394855165,'ΧΑΝ3014');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (11, 713220332,'ΙΚΚ4125');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (12, 683220828,'ΡΕΙ2413');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (13, 895368111,'ΙΥΡ8545');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (14, 133607942,'ΧΑΙ5632');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (15, 855960853,'ΧΕΙ5214');
insert into drives (id, driver_licence_number, vehicle_licence_number) values (16, 340313899,'ΧΑΝ3014');

