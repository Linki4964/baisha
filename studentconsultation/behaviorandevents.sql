create table behaviorandevents
(
	StudentID int null,
	Behavior text null,
	MajorEvents text null,
	constraint behaviorandevents_ibfk_1
		foreign key (StudentID) references students (StudentID)
)
comment '表现和经历表';

create index StudentID
	on behaviorandevents (StudentID);

