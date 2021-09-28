CREATE TABLE [dbo].[Progress]
(
	[progressID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [team_memberID] INT NOT NULL, 
    [taskID] INT NOT NULL, 
    [activityID] INT NOT NULL, 
    [projectID] INT NOT NULL, 
    [status] VARCHAR(50) NOT NULL, 
    [description] TEXT NOT NULL
    CONSTRAINT FK_ActivityProgress FOREIGN KEY (activityID) REFERENCES Activity (activityID)
    CONSTRAINT FK_TeamMemberProgress FOREIGN KEY (team_memberID) REFERENCES Team_Member (team_memberID)
    CONSTRAINT FK_ProjectProgress FOREIGN KEY (projectID) REFERENCES Project (projectID)
    CONSTRAINT FK_TaskProgress FOREIGN KEY (taskID) REFERENCES Task (taskID)
)
