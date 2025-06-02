using System;
using System.Collections.Generic;

namespace EmployeeManagement.Models;

public partial class Employee
{
    public int EmpId { get; set; }

    public string LastName { get; set; } = null!;

    public string? MiddleName { get; set; }

    public string FirstName { get; set; } = null!;

    public DateOnly? Dob { get; set; }

    public string? Address { get; set; }

    public string? Gender { get; set; }

    public decimal? Salary { get; set; }

    public int? DeptId { get; set; }

    public bool? SupervisorNavigation { get; set; }

    public virtual Department? Dept { get; set; }
}
