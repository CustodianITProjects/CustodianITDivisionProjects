CREATE TABLE [dbo].[Vendor]
(
	[vendorID] INT NOT NULL PRIMARY KEY, 
    [vendor_name] VARCHAR(100) NOT NULL, 
    [vendor_address] VARCHAR(150) NOT NULL, 
    [vendor_details] TEXT NOT NULL, 
    [team_memberID] INT NOT NULL
    CONSTRAINT FK_TeamMemberVendor FOREIGN KEY (team_memberID) REFERENCES Team_Member (team_memberID)
)
