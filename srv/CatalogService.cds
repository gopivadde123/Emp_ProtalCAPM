using {
    emp_portal.db.master.Employees,
    emp_portal.db.master.Projects
} from '../db/data-model';
using {emp_portal.myviews.CDSViews.EmpList} from '../db/CDSViews';   
service CatalogService @(
    path: 'catalog',
    title: 'Employee Portal Catalog Service',
){
     @cds.redirection.target
    entity EmployeeSet as projection on Employees;
    entity ProjectsSet as projection on Projects;
    entity EmpViewSet as projection on EmpList;
}