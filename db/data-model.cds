namespace emp_portal.db;
using { cuid, managed, sap } from '@sap/cds/common';

context master {
   entity Employees {
    key EmployeeId : UUID;
    EmpName : String(100);
    EmpDep: String(50);
    EmpRole: String(50);
    EmpProject: String(100);
    // Foriegn Key to Projects
    Project_GUID: Association to Projects;
   }
   entity Projects {
    key ProjectId : UUID;
    ProjectName : String(100);
    ProjectDescription : String(255);
    ProjectManager : String(100);
    StartDate : Date;
    EndDate : Date;
    ProjectCategory : String(50);
    ProjectStatus : String(50);
    EmployeesCount : Integer;
    Employees: Association to many Employees
        on Employees.Project_GUID.ProjectId = ProjectId;
   }
    
}