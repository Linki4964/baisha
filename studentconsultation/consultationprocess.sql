create table consultationprocess
(
	StudentID int null,
	Consultation text null,
	ProblemAnalysis text null,
	Suggestions text null,
	Notes text null,
	ConsultationDate date null,
	FilledBy varchar(100) null,
	constraint consultationprocess_ibfk_1
		foreign key (StudentID) references students (StudentID)
)
comment '咨询过程，分析及原因表';

create index StudentID
	on consultationprocess (StudentID);

