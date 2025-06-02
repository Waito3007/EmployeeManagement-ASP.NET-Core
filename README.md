# Employee Management System 🏢

Hệ thống quản lý nhân viên được phát triển bằng ASP.NET Core MVC với giao diện tiếng Việt và thiết kế hiện đại.

![ASP.NET Core](https://img.shields.io/badge/ASP.NET_Core-9.0-512BD4?style=for-the-badge&logo=dotnet)
![Entity Framework](https://img.shields.io/badge/Entity_Framework-8.0-512BD4?style=for-the-badge&logo=microsoft)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.0-7952B3?style=for-the-badge&logo=bootstrap)
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server)

## 🌟 Tính năng chính

- ✅ **CRUD hoàn chỉnh**: Tạo, xem, sửa, xóa nhân viên
- ✅ **Lọc theo phòng ban**: Dropdown filter để xem nhân viên theo từng phòng ban
- ✅ **Giao diện tiếng Việt**: Hoàn toàn bằng tiếng Việt, thân thiện với người dùng
- ✅ **Thiết kế responsive**: Tương thích với mọi thiết bị (desktop, tablet, mobile)
- ✅ **Bootstrap 5**: Giao diện hiện đại và chuyên nghiệp
- ✅ **Entity Framework Core**: ORM mạnh mẽ với SQL Server
- ✅ **Xử lý DateOnly**: Giải pháp custom model binding cho .NET 9

## 🚀 Công nghệ sử dụng

- **Framework**: ASP.NET Core 9.0 MVC
- **ORM**: Entity Framework Core 8.0.13
- **Database**: SQL Server LocalDB
- **Frontend**: Bootstrap 5 + HTML5 + CSS3
- **Language**: C# (.NET 9)

## 📋 Yêu cầu hệ thống

- .NET 9.0 SDK
- SQL Server LocalDB hoặc SQL Server
- Visual Studio 2022 / VS Code

## 🛠️ Cài đặt và chạy

### 1. Clone repository
```bash
git clone https://github.com/yourusername/EmployeeManagement-ASP.NET-Core.git
cd EmployeeManagement-ASP.NET-Core
```

### 2. Khôi phục packages
```bash
dotnet restore
```

### 3. Tạo database
Chạy script SQL trong file `create_employeemanagement_db.sql` để tạo database với dữ liệu mẫu.

### 4. Cấu hình connection string
Cập nhật connection string trong `appsettings.json` nếu cần:
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=employeemanagement;Trusted_Connection=true;MultipleActiveResultSets=true"
  }
}
```

### 5. Chạy ứng dụng
```bash
dotnet run
```

Truy cập: `https://localhost:5131`

## 📊 Cơ sở dữ liệu

### Bảng Department
- `DeptID` (int, Primary Key)
- `DeptName` (nvarchar(50))

### Bảng Employee  
- `EmpID` (int, Primary Key)
- `LastName` (nvarchar(20))
- `MiddleName` (nvarchar(30))
- `FirstName` (nvarchar(20))
- `DOB` (date)
- `Address` (nvarchar(100))
- `Gender` (bit)
- `Salary` (money)
- `DeptID` (int, Foreign Key)
- `SupervisorNavigation` (nvarchar(100))

## 🎯 Tính năng nổi bật

### Giải quyết vấn đề DateOnly trong .NET 9
Dự án này giải quyết vấn đề model binding cho DateOnly type trong .NET 9 bằng cách:
- Tạo `DateOnlyTypeConverter` để xử lý serialization/deserialization
- Tạo `DateOnlyModelBinder` để xử lý form binding
- Đăng ký custom model binder trong `Program.cs`

### Giao diện thân thiện
- Hoàn toàn bằng tiếng Việt
- Thiết kế responsive với Bootstrap 5
- Form validation đầy đủ
- Thông báo lỗi và thành công rõ ràng

### Hiệu suất tối ưu
- Entity Framework với lazy loading
- Parameterized queries để bảo mật
- Efficient JOIN operations (0-19ms response time)

## 📁 Cấu trúc dự án

```
EmployeeManagement/
├── Controllers/
│   ├── EmployeeController.cs    # CRUD operations
│   └── HomeController.cs        # Home page
├── Models/
│   ├── Department.cs           # Department entity
│   ├── Employee.cs            # Employee entity
│   └── EmployeeManagementContext.cs # DbContext
├── Views/
│   ├── Employee/              # All employee views
│   ├── Home/                  # Home views
│   └── Shared/               # Layout and shared views
├── ModelBinders/
│   └── DateOnlyModelBinder.cs # Custom DateOnly binder
├── Converters/
│   └── DateOnlyTypeConverter.cs # DateOnly converter
└── wwwroot/                   # Static files
```

## 🔧 Tùy chỉnh

### Thêm trường mới cho Employee
1. Cập nhật model `Employee.cs`
2. Tạo migration mới
3. Cập nhật views tương ứng

### Thay đổi giao diện
Chỉnh sửa file CSS trong `wwwroot/css/site.css` hoặc cập nhật Bootstrap components trong views.

## 🤝 Đóng góp

1. Fork repository
2. Tạo feature branch (`git checkout -b feature/TinhNangMoi`)
3. Commit changes (`git commit -am 'Thêm tính năng mới'`)
4. Push to branch (`git push origin feature/TinhNangMoi`)
5. Tạo Pull Request

## 📄 License

Dự án này được phát hành dưới [MIT License](LICENSE).

## 👨‍💻 Tác giả

**San Vu** 
- Email: sangvu2015dp1@gmail.com
