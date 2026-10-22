-- Part 3: lightweight Azure SQL schema update example.
-- Review the existing schema before running against production.
-- This script is intentionally additive and does not delete existing data.

IF COL_LENGTH('dbo.Donations', 'ReferenceCode') IS NULL
BEGIN
    ALTER TABLE dbo.Donations ADD ReferenceCode NVARCHAR(50) NULL;
END;
GO

CREATE INDEX IX_Donations_ReferenceCode
ON dbo.Donations (ReferenceCode)
WHERE ReferenceCode IS NOT NULL;
GO
