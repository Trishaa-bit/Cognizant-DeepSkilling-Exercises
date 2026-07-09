CREATE OR REPLACE FUNCTION sp_GetEmployeesByDepartment(dept_id INT)
RETURNS TABLE
(
    EmployeeID INT,
    FirstName VARCHAR,
    LastName VARCHAR,
    DepartmentID INT,
    Salary DECIMAL,
    JoinDate DATE
)
AS
$$
BEGIN
    RETURN QUERY
    SELECT
        e.EmployeeID,
        e.FirstName,
        e.LastName,
        e.DepartmentID,
        e.Salary,
        e.JoinDate
    FROM Employees e
    WHERE e.DepartmentID = dept_id;
END;
$$
LANGUAGE plpgsql;