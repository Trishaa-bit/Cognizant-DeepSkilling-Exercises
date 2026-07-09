CREATE OR REPLACE FUNCTION sp_TotalMembersByProject(project_name VARCHAR)
RETURNS INT
AS
$$
DECLARE
    total_members INT;
BEGIN
    SELECT COUNT(*)
    INTO total_members
    FROM ProjectTeam
    WHERE ProjectName = project_name;

    RETURN total_members;
END;
$$
LANGUAGE plpgsql;