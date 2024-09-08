create table dropoutreasons
(
	StudentID int null,
	DropoutReason text null,
	constraint dropoutreasons_ibfk_1
		foreign key (StudentID) references students (StudentID)
)
comment '失学，辍学原因表';

create index StudentID
	on dropoutreasons (StudentID);

