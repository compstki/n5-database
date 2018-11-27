REM   Script: bike and staff
REM   SQA N5 Computing Science example

DROP TABLE bike_staff


CREATE TABLE bike_staff( 
                        employeeNumber number,  
                        surname VARCHAR2(20),  
                        address VARCHAR2(30),  
                        telephone VARCHAR2(13),  
                        expertise VARCHAR2(8),  
                        startDate date,  
                        contractHours date,  
                        tempWorker varchar2(5) 
                       );

ALTER TABLE bike_staff 
ADD CONSTRAINT bike_staff_pk  
  PRIMARY KEY (employeeNumber);

ALTER TABLE bike_staff 
  MODIFY ( 
          employeeNumber NOT NULL,  
          surname NOT NULL,  
          address NOT NULL, 
          telephone NOT NULL,  
          expertise NOT NULL,  
          startDate NOT NULL, 
          contractHours NOT NULL,  
          tempWorker NOT NULL 
         );

ALTER TABLE bike_staff  
ADD CONSTRAINT bike_staff_phone_ck  
  CHECK (length(telephone) = 13);

ALTER TABLE bike_staff 
ADD CONSTRAINT bike_staff_expertise_ck 
  CHECK (expertise IN ('Sales', 'Mechanic'));

ALTER TABLE bike_staff 
ADD CONSTRAINT bike_staff_temp_ck 
  CHECK (tempWorker IN ('TRUE', 'FALSE'));

delete from bike_staff;

INSERT INTO bike_staff 
 
       (employeeNumber,  
        surname,  
        address,  
        telephone,  
        expertise,  
        startDate,  
        contractHours,  
        tempWorker)  
  
VALUES ( 
        1, 
        'Ester',  
        '2 Harper Place',  
        '0707-530-0843',  
        'Sales',  
        to_date('03/11/2012','dd/mm/yyyy'),  
        to_date('03:00:00','HH24:MI:SS'),  
        'FALSE' 
       );

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (2,'Tabb','29271 Morrow Circle','0844-995-0581','Mechanic',to_date('11/10/2015','dd/mm/yyyy'),to_date('03:00:00','HH24:MI:SS'),'TRUE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (3,'Ambros','843 Cody Hill','0336-754-3462','Sales',to_date('18/12/2014','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'TRUE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (4,'Westbrook','7 Rutledge Street','0439-655-1009','Mechanic',to_date('22/02/2014','dd/mm/yyyy'),to_date('05:00:00','HH24:MI:SS'),'TRUE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (5,'Tallie','42 Park Drive','0516-550-2169','Sales',to_date('18/07/2013','dd/mm/yyyy'),to_date('05:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (6,'Weston','8944 Eastwood Park','0302-384-7864','Mechanic',to_date('25/10/2013','dd/mm/yyyy'),to_date('06:00:00','HH24:MI:SS'),'TRUE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (7,'Amy','25685 Corscot Terrace','0889-155-5671','Mechanic',to_date('10/03/2015','dd/mm/yyyy'),to_date('03:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (8,'Simeon','353 Mccormick Road','0344-290-4398','Mechanic',to_date('19/11/2014','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'TRUE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (9,'Gabriele','1 Mallory Center','0892-465-1261','Mechanic',to_date('16/01/2012','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (10,'Hazel','1557 Hansons Plaza','0458-877-2043','Mechanic',to_date('13/06/2012','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (11,'Mariejeanne','390 Monica Way','0690-151-4071','Mechanic',to_date('13/06/2012','dd/mm/yyyy'),to_date('06:00:00','HH24:MI:SS'),'TRUE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (12,'Gill','48496 Bashford Park','0230-426-0365','Sales',to_date('14/07/2012','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (13,'Tarra','63 Cody Place','0311-152-8688','Sales',to_date('12/02/2016','dd/mm/yyyy'),to_date('05:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (14,'Hanna','692 Melvin Park','0315-871-3267','Mechanic',to_date('25/12/2013','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');

INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (15,'Salvatore','82 Erie Junction','0262-267-0550','Sales',to_date('18/07/2011','dd/mm/yyyy'),to_date('04:00:00','HH24:MI:SS'),'FALSE');

DROP table sqa_bike


CREATE TABLE sqa_bike( 
                      serialNumber VARCHAR2(20),  
                      make VARCHAR2(20),  
                      model VARCHAR2(20),  
                      type VARCHAR2(8),  
                      gears number,  
                      employeeNumber number 
                     );

ALTER TABLE sqa_bike 
ADD CONSTRAINT bike_pk  
  PRIMARY KEY (serialNumber);

ALTER TABLE sqa_bike 
  MODIFY ( 
          serialNumber NOT NULL,  
          make NOT NULL,  
          model NOT NULL, 
          type NOT NULL,  
          gears NOT NULL,  
          employeeNumber NOT NULL 
          );

ALTER TABLE sqa_bike  
ADD CONSTRAINT bike_gears_ck  
  CHECK (gears between 1 and 30);

ALTER TABLE sqa_bike 
ADD CONSTRAINT bike_type_ck 
  CHECK (type IN ('Road', 'Classic', 'Mountain', 'BMX', 'Hybrid' ));

ALTER TABLE sqa_bike 
  ADD CONSTRAINT bike_staff_fk 
  FOREIGN KEY(employeeNumber) 
  REFERENCES bike_staff(employeeNumber);

delete from sqa_bike;

INSERT INTO sqa_bike 
 
(serialNumber, make, model, type, gears, employeeNumber)  
 
VALUES  
 
('20X5346F', 'Boardman', 'CX Team 14', 'Road', 20, 11);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('RAL09787','Raleigh','Cameo','Classic',7,9);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('RAL026356','Raleigh','Cuckoo','Classic',3,9);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('863345467','Carrera','Kraken','Mountain',27,10);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('20X62983','Boardman','MB Comp','Mountain',20,7);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('V0973647','Voodoo','Malice','BMX',1,7);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('30X6253J','Boardman','Team','Hybrid',21,9);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('V02377643','Voodoo','Malice','BMX',1,7);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('RAL97436','Raleigh','Cameo','Classic',7,12);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('RAL09944','Raleigh','Sprint','Road',21,11);

INSERT INTO sqa_bike(serialNumber,make,model,type,gears,employeeNumber) VALUES ('30X76543','Boardman','CX Team 14','Road',20,11);

