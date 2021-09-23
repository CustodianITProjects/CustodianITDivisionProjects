CREATE TABLE [dbo].[Activity]
(
	[activityID] INT NOT NULL PRIMARY KEY, 
    [activity_name] VARCHAR(50) NULL, 
    [projectID] INT NOT NULL, 
    [priority] INT NOT NULL, 
    [description] TEXT NOT NULL, 
    [planned_start_date] DATE NOT NULL, 
    [planned_end_date] DATE NOT NULL, 
    [planned_budget] DECIMAL(8, 2) NOT NULL, 
    [actual_start_date] DATE NOT NULL, 
    [actual_end_date] DATE NOT NULL, 
    [actual_budget] DECIMAL(8, 2) NOT NULL, 
    CONSTRAINT FK_ProjectActivity FOREIGN KEY (projectID) REFERENCES Project (projectID)
)
