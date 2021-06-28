create table owns(
	id INT not null,
	car_licence_number VARCHAR(50) not null,
	owner_id VARCHAR(50) not null,
	primary key (id)
	foreign key(owner_id) references owner(owner_id),
	foreign key(car_licence_number) references vehicle_accounting_info(car_licence_number)

);

insert into owner (id, car_licence_number, owner_id) values (1,'ΙΚΚ4125','ΑΚ302010');
insert into owner (id, car_licence_number, owner_id) values (2,'ΗΡΑ6974','ΕΚ402960');
insert into owner (id, car_licence_number, owner_id) values (3,'ΡΕΙ2413','ΚΛ802101');
insert into owner (id, car_licence_number, owner_id) values (4,'ΚΑΙ5785','ΙΚ910283');
insert into owner (id, car_licence_number, owner_id) values (5,'ΙΟΚ5874','ΓΗ562377');
insert into owner (id, car_licence_number, owner_id) values (6,'ΙΥΡ8545','ΑΔ123698');
insert into owner (id, car_licence_number, owner_id) values (7,'ΧΑΙ5632','ΑΣ563214');
insert into owner (id, car_licence_number, owner_id) values (8,'ΙΚΑ2541','ΙΟ857423');
insert into owner (id, car_licence_number, owner_id) values (9,'ΧΕΙ5214','ΕΡ569841');
insert into owner (id, car_licence_number, owner_id) values (10,'ΧΑΝ3014','ΠΟ745632');