CREATE TABLE [Module1].[MonolithModule1Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Module1Table1Id] INT NULL, 
    CONSTRAINT [FK_MonolithModule1Table_ToTable] FOREIGN KEY ([Module1Table1Id]) REFERENCES [Module1].[Module1Table1] ([Id])
)
