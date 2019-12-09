DROP TABLE AMPLIFIER;


DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE( 
   employeeNumber NUMBER(4,0)  NOT NULL PRIMARY KEY 
  ,firstName      VARCHAR2(15) NOT NULL 
  ,surname        VARCHAR2(15) NOT NULL 
  ,address        VARCHAR2(50) NOT NULL 
  ,contactNumber  VARCHAR2(11) NOT NULL 
  ,drivingLicence VARCHAR2(5) NOT NULL 
);

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (1012,'John','Smith','20 High Street','07782456128','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (1100,'Susan','Brown','126 George Street','07991165241','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (1116,'Teressa','Jones','24 Dundas Street','01316733989','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (1175,'Martin','Daly','11 Edinburgh Road','01417676232','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (1200,'Robbie','Durkin','12 Perth Street','01316111892','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (2266,'Greg','Watson','7 McLeod Street','01317679999','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (2287,'Wendy','Russell','2b McArthur Grove','01312261522','FALSE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (3399,'Pamela','Anderson','17 St. John Street','07533398101','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (3567,'Ian','Hunter','8 Halo Avenue','07222561187','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (3777,'Jim','Kerr','16 Hay Drive','07733422512','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (4235,'Lesley','Wallace','72 Sutherland Way','07888229371','FALSE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (4442,'Kim','Pettigrew','144 Western Way','01316709098','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (5699,'Steven','Johnstone','90a Main Street','01415543772','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (6623,'Ali','Hussain','12/6 Salisbury Heights','01412298610','FALSE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (7720,'Hasan','Abbas','88 Sighthill Drive','01412277934','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (8872,'Jacek','Nowak','16/5 Argyle Place','01418983782','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (8884,'Mirka','Kowalski','22 Henderson Row','01415522876','TRUE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (9812,'Rudo','Hyper','64 Bleeker Street','01415562281','FALSE');

INSERT INTO EMPLOYEE(employeeNumber,firstName,surname,address,contactNumber,drivingLicence) VALUES (9822,'Tisa','Sullivan','91 Fillian Way','01416576871','TRUE');


ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';



CREATE TABLE AMPLIFIER( 
   serialNumber   VARCHAR(10) NOT NULL PRIMARY KEY 
  ,dateBuilt      DATE  NOT NULL 
  ,timeCompleted  DATE NOT NULL 
  ,model          VARCHAR(7) NOT NULL 
  ,passedTest     VARCHAR(5) NOT NULL 
  ,employeeNumber INTEGER  NOT NULL 
);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('0664jmlu93','25-Jan-2018','30-Dec-1899 11:43:00','Blues55','FALSE',3567);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('9806jbfi56','16-Sep-2018','30-Dec-1899 14:03:00','Blues55','FALSE',2287);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('9006lobl73','31-Jul-2018','30-Dec-1899 13:36:00','Blues55','TRUE',7720);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('1300xqkv41','28-Sep-2018','30-Dec-1899 09:13:00','Rock100','FALSE',3777);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('0067gnkm16','15-Nov-2017','30-Dec-1899 13:36:00','Blues55','FALSE',3399);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('3637olun52','28-Apr-2018','30-Dec-1899 16:19:00','Jazz8','FALSE',8884);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('3413xutz26','11-Jan-2018','30-Dec-1899 12:57:00','Blues55','TRUE',9812);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('8559eagi54','26-Nov-2017','30-Dec-1899 09:19:00','Blues55','FALSE',8872);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('1950offe47','13-Jul-2018','30-Dec-1899 14:33:00','Jazz8','FALSE',3567);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('7057rdul69','21-Aug-2017','30-Dec-1899 11:00:00','Rock100','TRUE',1116);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('7876txmb39','22-Feb-2018','30-Dec-1899 13:41:00','Blues55','FALSE',9822);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('9430manz84','02-Oct-2018','30-Dec-1899 12:31:00','Rock100','TRUE',2287);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('6583fdgf48','05-Apr-2018','30-Dec-1899 14:17:00','Blues55','FALSE',2266);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('6216sfqm97','10-Feb-2018','30-Dec-1899 10:44:00','Jazz8','FALSE',5699);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('4567jzqr86','10-Feb-2018','30-Dec-1899 16:23:00','Rock100','FALSE',4442);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('8544rpof33','19-Feb-2018','30-Dec-1899 10:28:00','Blues55','TRUE',3777);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('7196bgsd13','14-Feb-2018','30-Dec-1899 14:37:00','Jazz8','TRUE',3777);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('2963qnew84','09-Oct-2018','30-Dec-1899 11:05:00','Jazz8','FALSE',7720);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('0393tcea03','12-May-2018','30-Dec-1899 12:09:00','Rock100','FALSE',8884);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('0710fpol38','15-May-2018','30-Dec-1899 14:26:00','Blues55','TRUE',7720);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('9251kznc56','14-Feb-2018','30-Dec-1899 10:20:00','Rock100','FALSE',7720);

INSERT INTO AMPLIFIER(serialNumber,dateBuilt,timeCompleted,model,passedTest,employeeNumber) VALUES ('5441yiow31','01-Sep-2017','30-Dec-1899 10:56:00','Rock100','FALSE',9812);

ALTER TABLE amplifier   
ADD CONSTRAINT amp_CON_LEN   
  CHECK (length(serialnumber) = 10);

ALTER TABLE amplifier 
ADD CONSTRAINT amp_model_name 
  CHECK (model IN ('Jazz8', 'Rock100', 'Blues55'));



