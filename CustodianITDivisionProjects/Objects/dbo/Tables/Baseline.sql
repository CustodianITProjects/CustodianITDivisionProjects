CREATE TABLE [dbo].[Baseline]
(
	[baselineID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [activityID] INT NOT NULL, 
    [objectivesID] INT NOT NULL, 
    [deliverablesID] INT NOT NULL, 
    [costID] INT NOT NULL
    CONSTRAINT FK_ActivityBaseline FOREIGN KEY (activityID) REFERENCES Activity (activityID)
    CONSTRAINT FK_ObjectivesBaseline FOREIGN KEY (objectivesID) REFERENCES Objectives (objectivesID)
    CONSTRAINT FK_DeliverablesBaseline FOREIGN KEY (deliverablesID) REFERENCES Deliverables (deliverablesID)
    CONSTRAINT FK_CostImplicationBaseline FOREIGN KEY (costID) REFERENCES Cost_Implication (costID)
)
