CREATE TABLE Examples.Gadget
(
GadgetId int NOT NULL CONSTRAINT PKGadget PRIMARY KEY,
GadgetNumber char(8) NOT NULL CONSTRAINT AKGadget UNIQUE,
GadgetType varchar(10) NOT NULL
);
GO

INSERT INTO Examples.Gadget(GadgetId, GadgetNumber, GadgetType)
VALUES   (1,'00000001','Electronics'),
         (2,'00000002','Manual'),
		 (3,'00000003','Manual');


		 GO
CREATE VIEW Examples.ElectronicGadget
AS
SELECT GadgetId, GadgetNumber, GadgetType,
      UPPER(GadgetNumber) AS UpperGadgetType
	  FROM Examples.Gadget
	  WHERE GadgetType ='Electronics';
	  GO
	  SELECT* FROM Examples.Gadget;
	  SELECT*FROM Examples.ElectronicGadget;
	  go

	SELECT ElectronicGadget.GadgetNumber as Fromview,
	  Gadget.GadgetNumber as FromTable,
	  Gadget.GadgetType, ElectronicGadget.UpperGadgetType
	FROM Examples.ElectronicGadget
        FULL OUTER JOIN Examples.Gadget 
		   ON ElectronicGadget.GadgetId=Gadget.GadgetId;
		   GO

		   INSERT INTO Examples.ElectronicGadget(GadgetId,GadgetNumber,GadgetType)
		   Values (4,'00000004','Electronic'),
		   (5,'00000005','Manual');
UPDATE Examples.ElectronicGadget
SET GadgetType = 'Manual'
WHERE GadgetNumber = '00000004';
GO


UPDATE Examples.ElectronicGadget
SET GadgetType = 'Electronic'
WHERE GadgetNumber= '00000005';
GO

