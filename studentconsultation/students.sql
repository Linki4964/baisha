create table students
(
	StudentID int auto_increment
		primary key,
	Name varchar(100) not null,
	Gender enum('男', '女') not null,
	Age int not null,
	Hometown char(50) null,
	Ethnicity char(2) null,
	HomeAddress varchar(255) null,
	CurrentSchool char(100) null,
	AcademicStatus enum('辍学', '失学', '毕业', '逃学') not null,
	GuardianID int null,
	FamilyEconomicStatus varchar(255) null,
	IsLeftBehindChild enum('是', '否') null,
	IsOnlyChild enum('是', '否') null,
	SiblingsInfo varchar(255) null
)
comment '学生基本信息表';

