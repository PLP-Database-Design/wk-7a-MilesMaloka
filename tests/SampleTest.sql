CREATE PROCEDURE test_SampleTest
AS
BEGIN
    -- Arrange
    EXEC tSQLt.FakeTable 'dbo.YourTable';

    -- Act
    INSERT INTO dbo.YourTable (Column1, Column2) VALUES (1, 'Test');

    -- Assert
    DECLARE @Count INT;
    SELECT @Count = COUNT(*) FROM dbo.YourTable;
    EXEC tSQLt.AssertEqualsInt 1, @Count;
END;

EXEC tSQLt.CreateTestClass 'SampleTest';