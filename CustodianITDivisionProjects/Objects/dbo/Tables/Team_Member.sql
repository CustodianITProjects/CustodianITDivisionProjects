CREATE TABLE [dbo].[Team_Member]
(
	[team_memberID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [teamID] INT NOT NULL, 
    [employeeID] INT NOT NULL, 
    [roleID] INT NOT NULL
    CONSTRAINT FK_TeamTeamMember FOREIGN KEY (teamID) REFERENCES Team (teamID)
    CONSTRAINT FK_EmployeeTeamMember FOREIGN KEY (employeeID) REFERENCES Employee (employeeID)
    CONSTRAINT FK_RoleTeamMember FOREIGN KEY (roleID) REFERENCES Role (roleID)
)
