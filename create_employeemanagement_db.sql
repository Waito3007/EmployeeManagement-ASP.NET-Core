-- Tạo database employeemanagement
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'employeemanagement')
BEGIN
    CREATE DATABASE employeemanagement;
END
GO

USE employeemanagement;
GO

-- Tạo bảng Department (Phòng ban)
CREATE TABLE Department (
    DeptID INT IDENTITY(1,1) PRIMARY KEY,
    DeptName NVARCHAR(100) NOT NULL
);

-- Tạo bảng Employee (Nhân viên)  
CREATE TABLE Employee (
    EmpID INT IDENTITY(1,1) PRIMARY KEY,
    LastName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50),
    FirstName NVARCHAR(50) NOT NULL,
    DOB DATE,
    Address NVARCHAR(200),
    Gender NVARCHAR(10),
    Salary DECIMAL(18,2),
    DeptID INT,
    SupervisorNavigation BIT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

-- Thêm dữ liệu mẫu cho Department
INSERT INTO Department (DeptName) VALUES 
(N'Nhân sự'),
(N'Kế toán'), 
(N'Kỹ thuật'),
(N'Marketing'),
(N'Bán hàng');

-- Thêm dữ liệu mẫu cho Employee
INSERT INTO Employee (LastName, MiddleName, FirstName, DOB, Address, Gender, Salary, DeptID, SupervisorNavigation) VALUES
(N'Lê', N'Quỳnh', N'Như', '1987-03-01', N'291 Hải Bà Trưng, Tp HCM', N'Nữ', 45000, 1, 0),
(N'Nguyễn', N'Thành', N'Tâm', '1984-05-10', N'Quận 1, Tp HCM', N'Nam', 25000, 2, 0),
(N'Nguyễn', N'Mạnh', N'Hùng', '1983-12-06', N'95 Bà Hạt, Vũng Tàu', N'Nam', 38000, 3, 0),
(N'Nguyễn', N'Thành', N'Tùng', '1982-04-20', N'222 Nguyễn Văn Cừ, Tp HCM', N'Nam', 40000, 1, 0),
(N'Phạm', N'Văn', N'Vĩnh', '1985-01-10', N'Quận 7, Tp HCM', N'Nam', 55000, 4, 0),
(N'Bùi', N'Ngọc', N'Hằng', '1984-11-07', N'432 Nguyễn Thái Học, Tp HCM', N'Nữ', 25000, 5, 1),
(N'Trần', N'Hồng', N'Quang', '1977-09-01', N'Bình Thạnh Phủ, Tp HCM', N'Nam', 22000, 2, 0),
(N'Trần', N'Thành', N'Hải', '1976-01-01', N'119 Cống Quỳnh, Tp HCM', N'Nam', 30000, 3, 0);
