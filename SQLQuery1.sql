Create Database mynewDatabase
Go
CREATE SCHEMA MyCategory1;
Go
CREATE TABLE MyCategory1.NewTableName (
   MyTableId int PRIMARY KEY,
   SomeTexValue varchar(100) NOT NULL,
   SomeIntValue int NULL
   )
   Go
   Select * From MyCategory1.NewTableName;
   ALTER TABLE MyCategory1.NewTableName
     ADD NewValue varchar(100) NOT NULL
	 GO

	 ---CREATEW INDEX
	 ---CREATE VIEWS