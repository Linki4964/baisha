create table academicandfamily
(
	StudentID int null,
	AcademicPerformance text null,
	FamilyEducation text null,
	constraint academicandfamily_ibfk_1
		foreign key (StudentID) references students (StudentID)
)
comment '学业和家庭教育情况表';

create index StudentID
	on academicandfamily (StudentID);

