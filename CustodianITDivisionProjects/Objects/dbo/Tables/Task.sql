CREATE TABLE [dbo].[Task]
(
	[taskID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [task_name] VARCHAR(50) NOT NULL, 
    [activityID] INT NOT NULL, 
    [team_memberID] INT NOT NULL, 
    [priority] INT NOT NULL, 
    [description] TEXT NOT NULL, 
    [planned_start_date] DATE NOT NULL, 
    [planned_end_date] DATE NOT NULL, 
    [planned_budget] DECIMAL(8, 2) NOT NULL, 
    [actual_start_date] DATE NOT NULL, 
    [actual_end_date] DATE NOT NULL, 
    [actual_budget] DECIMAL(8, 2) NOT NULL
    CONSTRAINT FK_ActivityTask FOREIGN KEY (activityID) REFERENCES Activity (activityID)
    CONSTRAINT FK_TeamMemberTask FOREIGN KEY (team_memberID) REFERENCES Team_Member (team_memberID)
)
