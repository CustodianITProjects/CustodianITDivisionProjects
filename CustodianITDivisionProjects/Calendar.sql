CREATE TABLE [dbo].[Calendar]
(
	[calendar_date] DATE NOT NULL PRIMARY KEY, 
    [day] INT NOT NULL, 
    [month] INT NOT NULL, 
    [quarter] INT NOT NULL, 
    [year] INT NOT NULL, 
    [month_name] VARCHAR(10) NOT NULL
)
