Application Express Home  
Application BuilderSQL Workshop currentTeam DevelopmentPackaged Apps
SQL WorkshopSQL ScriptsScript Editor	
Script Name 
bike_AND_STAFF
Script	

21
​
22
ALTER TABLE bike_staff 
23
  MODIFY ( 
24
          employeeNumber NOT NULL,  
25
          surname NOT NULL,  
26
          address NOT NULL, 
27
          telephone NOT NULL,  
28
          expertise NOT NULL,  
29
          startDate NOT NULL, 
30
          contractHours NOT NULL,  
31
          tempWorker NOT NULL 
32
         );
33
​
34
ALTER TABLE bike_staff  
35
ADD CONSTRAINT bike_staff_phone_ck  
36
  CHECK (length(telephone) = 13);
37
​
38
ALTER TABLE bike_staff 
39
ADD CONSTRAINT bike_staff_expertise_ck 
40
  CHECK (expertise IN ('Sales', 'Mechanic'));
41
​
42
ALTER TABLE bike_staff 
43
ADD CONSTRAINT bike_staff_temp_ck 
44
  CHECK (tempWorker IN ('TRUE', 'FALSE'));
45
​
46
delete from bike_staff;
47
​
48
INSERT INTO bike_staff 
49
 
50
       (employeeNumber,  
51
        surname,  
52
        address,  
53
        telephone,  
54
        expertise,  
55
        startDate,  
56
        contractHours,  
57
        tempWorker)  
58
  
59
VALUES ( 
60
        1, 
61
        'Ester',  
62
        '2 Harper Place',  
63
        '0707-530-0843',  
64
        'Sales',  
65
        to_date('03/11/2012','dd/mm/yyyy'),  
66
        to_date('03:00:00','HH24:MI:SS'),  
67
        'FALSE' 
68
       );
69
​
70
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (2,'Tabb','29271 Morrow Circle','0844-995-0581','Mechanic',to_date('11/10/2015','dd/mm/yyyy'),to_date('03:00:00','HH24:MI:SS'),'TRUE');
71
​
72
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (3,'Ambros','843 Cody Hill','0336-754-3462','Sales',to_date('18/12/2014','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'TRUE');
73
​
74
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (4,'Westbrook','7 Rutledge Street','0439-655-1009','Mechanic',to_date('22/02/2014','dd/mm/yyyy'),to_date('05:00:00','HH24:MI:SS'),'TRUE');
75
​
76
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (5,'Tallie','42 Park Drive','0516-550-2169','Sales',to_date('18/07/2013','dd/mm/yyyy'),to_date('05:00:00','HH24:MI:SS'),'FALSE');
77
​
78
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (6,'Weston','8944 Eastwood Park','0302-384-7864','Mechanic',to_date('25/10/2013','dd/mm/yyyy'),to_date('06:00:00','HH24:MI:SS'),'TRUE');
79
​
80
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (7,'Amy','25685 Corscot Terrace','0889-155-5671','Mechanic',to_date('10/03/2015','dd/mm/yyyy'),to_date('03:00:00','HH24:MI:SS'),'FALSE');
81
​
82
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (8,'Simeon','353 Mccormick Road','0344-290-4398','Mechanic',to_date('19/11/2014','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'TRUE');
83
​
84
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (9,'Gabriele','1 Mallory Center','0892-465-1261','Mechanic',to_date('16/01/2012','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');
85
​
86
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (10,'Hazel','1557 Hansons Plaza','0458-877-2043','Mechanic',to_date('13/06/2012','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');
87
​
88
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (11,'Mariejeanne','390 Monica Way','0690-151-4071','Mechanic',to_date('13/06/2012','dd/mm/yyyy'),to_date('06:00:00','HH24:MI:SS'),'TRUE');
89
​
90
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (12,'Gill','48496 Bashford Park','0230-426-0365','Sales',to_date('14/07/2012','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');
91
​
92
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (13,'Tarra','63 Cody Place','0311-152-8688','Sales',to_date('12/02/2016','dd/mm/yyyy'),to_date('05:00:00','HH24:MI:SS'),'FALSE');
93
​
94
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (14,'Hanna','692 Melvin Park','0315-871-3267','Mechanic',to_date('25/12/2013','dd/mm/yyyy'),to_date('07:00:00','HH24:MI:SS'),'FALSE');
95
​
96
INSERT INTO bike_staff(employeeNumber,surname,address,telephone,expertise,startDate,contractHours,tempWorker) VALUES (15,'Salvatore','82 Erie Junction','0262-267-0550','Sales',to_date('18/07/2011','dd/mm/yyyy'),to_date('04:00:00','HH24:MI:SS'),'FALSE');
97
​
98
DROP table sqa_bike
99
​
100
​
101
CREATE TABLE sqa_bike( 
102
                      serialNumber VARCHAR2(20),  
103
                      make VARCHAR2(20),  
104
                      model VARCHAR2(20),  
105
                      type VARCHAR2(8),  
106
                      gears number,  
107
                      employeeNumber number 
108
                     );
109
​
110
ALTER TABLE sqa_bike 
111
ADD CONSTRAINT bike_pk  
112
  PRIMARY KEY (serialNumber);
113
​
114
ALTER TABLE sqa_bike 
115
  MODIFY ( 
116
          serialNumber NOT NULL,  
117
          make NOT NULL,  
118
          model NOT NULL, 
119
          type NOT NULL,  
120
          gears NOT NULL,  
 user gb_a470_sql_t01_admin  workspace gb_a470_sql_t01  en	Copyright © 1999, 2015, Oracle. All rights reserved.	Application Express 5.0.3.00.03
