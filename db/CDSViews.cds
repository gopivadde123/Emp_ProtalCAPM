namespace emp_portal.myviews;
using {
    emp_portal.db.master.Employees,
    emp_portal.db.master.Projects
} from '../db/data-model';

context CDSViews {
    define view ![EmpList] as select from Employees {
        key EmployeeId as ![EmpId],
        EmpName as ![EmpName],
        EmpDep as ![Dept],
        EmpRole as ![Erole],
        EmpProject as ![Eproject],
        Project_GUID as ![ProjectId]
    }
}