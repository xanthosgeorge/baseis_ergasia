create table insurance_contracts (
	contract_code numeric NOT NULL PRIMARY KEY,
	car_licence_number VARCHAR(50) NOT NULL FOREIGN KEY REFERENCES vehicle_accounting_info(licence_number),
	datestart date,
	dateend date,
	status bool,
	contract_cost varchar(20),

);
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (2850251925, 'ΙΚΚ4125', '22/01/2020','22/04/2020', false, '€17111,55');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (3047942730, 'ΗΡΑ6974', '05/12/2020','05/03/2021',false, '€85276,45');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (8034135429, 'ΧΑΝ3014', '18/03/2021','18/09/2021',true, '€35596,96');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (0173328954, 'ΙΚΑ2541', '23/04/2021','23/07/2021',true, '€94360,24');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (9115464814, 'ΙΟΚ5874', '21/06/2020','21/06/2021', false, '€16582,82');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (1758036796, 'ΙΥΡ8545', '22/06/2020','22/10/2020', false, '€56179,29');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (3346491285, 'ΧΑΙ5632', '27/08/2020','27/08/2021', true, '€43785,20');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (8492844388, 'ΧΕΙ5214', '11/01/2021','11/01/2022', true, '€96670,25');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (5404242817, 'ΚΑΙ5785', '15/10/2020', '15/07/2021',true, '€45403,64');
insert into insurance_contracts (contract_code, car_licence_number, datestart, dateend, status, contract_cost) values (4810370135, 'ΡΕΙ2413', '16/07/2020','16/07/2021', true, '€51851,49');
