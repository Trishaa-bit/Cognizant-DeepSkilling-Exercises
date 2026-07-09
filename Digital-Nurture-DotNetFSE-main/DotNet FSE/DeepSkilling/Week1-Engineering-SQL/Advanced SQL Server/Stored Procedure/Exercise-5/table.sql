CREATE TABLE ProjectTeam (
    TeamMemberID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ProjectName VARCHAR(50),
    Experience INT,
    JoinDate DATE
);