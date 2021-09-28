CREATE TABLE [dbo].[Cost_Implication]
(
	[costID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [proposed_amount] DECIMAL(8, 2) NOT NULL, 
    [actual_amount] DECIMAL(8, 2) NOT NULL
)
