CREATE TABLE [dbo].[Project]
(
	[projectID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [project_name] VARCHAR(50) NOT NULL, 
    [planned_start_date] DATE NOT NULL, 
    [planned_end_date] DATE NOT NULL, 
    [actual_start_date] DATE NOT NULL, 
    [actual_end_date] DATE NOT NULL, 
    [project_description] TEXT NOT NULL
    CONSTRAINT FK_CalendarProject FOREIGN KEY (planned_start_date) REFERENCES Calendar (calendar_date)
)
