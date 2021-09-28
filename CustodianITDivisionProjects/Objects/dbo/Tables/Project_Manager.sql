CREATE TABLE [dbo].[Project_Manager]
(
	[project_managerID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [project_manager_name] VARCHAR(100) NOT NULL, 
    [projectID] INT NOT NULL
    CONSTRAINT FK_ProjectProjectManager FOREIGN KEY (projectID) REFERENCES Project (projectID)
)
