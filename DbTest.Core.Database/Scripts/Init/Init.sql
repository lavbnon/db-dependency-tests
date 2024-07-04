-- insert patch table if not exists
IF NOT(EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Patch'))
BEGIN
	CREATE TABLE [dbo].[Patch]
	(
		[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
		[Name] NVARCHAR(50) NOT NULL,
		[Description] NVARCHAR(MAX) NOT NULL,
		[DateCreated] DATETIMEOFFSET NOT NULL DEFAULT GETDATE()
	)

	CREATE UNIQUE NONCLUSTERED INDEX [IX_dbo_Patch_Id] ON [dbo].[Patch]([Id] ASC);

	CREATE UNIQUE NONCLUSTERED INDEX [IX_dbo_Patch_Name] ON [dbo].[Patch]([Name] ASC);

END
GO