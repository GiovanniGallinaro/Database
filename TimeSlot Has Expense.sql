 DROP TABLE Tables-Enki;
 CREATE TABLE Tables-Enki (
`Field1` Character(254), 
`Field2` Character(254));
insert into Tables-Enki values('--TimeSlot','');
insert into Tables-Enki values('CREATE TABLE TimeSlot(','');
insert into Tables-Enki values('TimeSlotID UUID,','');
insert into Tables-Enki values('TaskID UUID,','');
insert into Tables-Enki values('TimeStamp TIMESTAMPTZ NOT NULL,','');
insert into Tables-Enki values('FiscalCode TEXT NOT NULL,','');
insert into Tables-Enki values('Notes TEXT,','');
insert into Tables-Enki values('Hours FLOAT NOT NULL,','');
insert into Tables-Enki values('HourlyWage FLOAT NOT NULL,','');
insert into Tables-Enki values('PRIMARY KEY(TimeSlot ID),','');
insert into Tables-Enki values('FOREIGN KEY(TaskID) REFERENCES Task(TaskID),','');
insert into Tables-Enki values('FOREIGN KEY(FiscalCode) REFERENCES Employee(FiscalCode)','');
insert into Tables-Enki values(');','');
insert into Tables-Enki values('','');
insert into Tables-Enki values('--Has','');
insert into Tables-Enki values('CREATE TABLE Has(','');
insert into Tables-Enki values('TimeSlot ID UUID NOT NULL,','');
insert into Tables-Enki values('Type TEXT NOT NULL,','');
insert into Tables-Enki values('Cost FLOAT NOT NULL,','');
insert into Tables-Enki values('Description TEXT,','');
insert into Tables-Enki values('HourlyWage FLOAT NOT NULL,','');
insert into Tables-Enki values('PRIMARY KEY (TimeSlotID, Type),','');
insert into Tables-Enki values('FOREIGN KEY (TimeSlotID) REFERENCES Timeslot(TimeSlotID),','');
insert into Tables-Enki values('FOREIGN KEY (Type) REFERENCES Expense (Type)','');
insert into Tables-Enki values(');','');
insert into Tables-Enki values('','');
insert into Tables-Enki values('--Expense','');
insert into Tables-Enki values('CREATE TABLE Expense(','');
insert into Tables-Enki values('Type TEXT,','');
insert into Tables-Enki values('PRIMARY KEY (Type)','');
insert into Tables-Enki values(');','');