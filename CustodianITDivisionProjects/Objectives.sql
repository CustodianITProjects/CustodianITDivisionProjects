CREATE TABLE [dbo].[Objectives]
(
	[objectivesID] INT NOT NULL PRIMARY KEY, 
    [baselineID] INT NOT NULL, 
    [description] TEXT NOT NULL
    CONSTRAINT FK_BaselineObjectives FOREIGN KEY (baselineID) REFERENCES Baseline (baselineID)
)
