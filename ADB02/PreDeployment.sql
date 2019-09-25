

/* create temp table according to the modifcation required on the original table */
/*Here we have created a temp table without name column to demosntrate a drop of the column in original table*/


IF object_id('Table1_tmp', 'U') is null
	CREATE TABLE Table1_tmp ( ID int );
	
ELSE
	PRINT 'Temp table already exists! '

IF EXISTS (SELECT  TOP 1 1 FROM   Table1)
    BEGIN
        INSERT INTO Table1_tmp (ID)
        SELECT   
		ID 
        FROM     Table1
    END
