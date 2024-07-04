IF '$(TestData)' = 'True'
BEGIN
	INSERT INTO System.SystemInfo (Name) VALUES (CONVERT(nvarchar, GETDATE()))

END