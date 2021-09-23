CREATE TABLE [dbo].[Deliverables]
(
	[deliverablesID] INT NOT NULL PRIMARY KEY, 
    [baselineID] INT NOT NULL, 
    [description] TEXT NOT NULL, 
    [acceptance_criteria] TEXT NOT NULL
    CONSTRAINT FK_BaselineDeliverables FOREIGN KEY (baselineID) REFERENCES Baseline (baselineID)
)
