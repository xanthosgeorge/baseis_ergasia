create table owner_contact_info (
	owner_name VARCHAR(50) not null,
	owner_lastname VARCHAR(50) not null,
	Address VARCHAR(50) not null,
	email VARCHAR(50) not null,
	tel numeric not null,
	owner_id VARCHAR(50) not null,
	primary key (owner_name,owner_lastname,Andress,email,tel),
	foreign key (owner_id) references owner(owner_id)
	
);

insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Hanni', 'Steddall', '8 Green Ridge Lane', 'hanni@gmail.com',3972649690, 'ΑΚ302010');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Toby', 'Moffet','216 Summer Ridge Hill', 'moffet34@gmail.com',9305586087, 'ΕΚ402960');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Krisha', 'Cawkwell','61896 Declaration Crossing', 'kcawkwell@hotmail.com',9305586087, 'ΚΛ802101');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Kelsey', 'Cockney','4 Carpenter Lane','kelsey.cockney@gmail.com',6225121642, 'ΙΚ910283');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Elysia', 'Meaders','16 Kensington Circle', 'elysia@yahoo.com',9451173772, 'ΓΗ562377');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Angelico', 'Evangelinos','645 Summit Circle', 'angelico@gmail.com',1096149918, 'ΑΔ123698');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Putnam', 'Carnall','3116 Mcbride Way', 'putnam@hotmail.com',8126368598, 'ΑΣ563214');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Ricoriki', 'Winterscale','0 West Place', 'ricWinterscale@hotmail.com',3817505129, 'ΙΟ857423');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Cirstoforo', 'Gahagan','13 Steensland Place', 'gah89@outlook.com',4347086630, 'ΕΡ569841');
insert into owner_contact_info (owner_name, owner_lastname, Address, email, telephone, owner_id) values ('Shirl', 'Forrestill','26245 Forest Dale Street', 'shirl241@yahoo.com',5075490245, 'ΠΟ745632');
