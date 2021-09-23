CREATE TABLE [dbo].[Cost_Implication]
(
	[costID] INT NOT NULL PRIMARY KEY, 
    [baselineID] INT NOT NULL, 
    [proposed_amount] DECIMAL(8, 2) NOT NULL, 
    [actual_amount] DECIMAL(8, 2) NOT NULL
    CONSTRAINT FK_BaselineCostImplications FOREIGN KEY (baselineID) REFERENCES Baseline (baselineID)
)
