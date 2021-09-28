CREATE TABLE [dbo].[Milestone]
(
	[milestoneID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [milestone_name] VARCHAR(100) NOT NULL, 
    [activityID] INT NOT NULL, 
    [proposed_achievement_date] DATE NOT NULL, 
    [actual_achievement_date] DATE NOT NULL
    CONSTRAINT FK_ActivityMilestone FOREIGN KEY (activityID) REFERENCES Activity (activityID)
)
