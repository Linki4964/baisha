create table health
(
	StudentID int null,
	HasBadHabits enum('无', '有') null,
	BadHabitDetails text null,
	HealthStatus text null,
	MajorIllnessHistory text null,
	ChronicDisease text null,
	PhysicalDefect text null,
	SelfRating int null,
	constraint health_ibfk_1
		foreign key (StudentID) references students (StudentID)
)
comment '健康状况表';

create index StudentID
	on health (StudentID);

