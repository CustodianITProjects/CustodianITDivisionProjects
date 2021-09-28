CREATE TABLE [dbo].[Risk_Register]
(
	[riskID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [projectID] INT NOT NULL, 
    [risk_description] TEXT NOT NULL, 
    [impact] TEXT NOT NULL, 
    [risk_response] TEXT NOT NULL, 
    [risk_level] VARCHAR(10) NOT NULL, 
    [risk_owner] INT NOT NULL, 
    [notes] TEXT NOT NULL
    CONSTRAINT FK_ProjectRisk FOREIGN KEY (projectID) REFERENCES Project (projectID)
    CONSTRAINT FK_TeamMemberRisk FOREIGN KEY (risk_owner) REFERENCES Team_Member (team_memberID)
)
