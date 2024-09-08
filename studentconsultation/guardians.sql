create table guardians
(
	GuardianID int auto_increment
		primary key,
	Name varchar(100) not null,
	Phone varchar(20) null,
	Relationship varchar(50) null,
	Occupation varchar(100) null,
	PoliticalAffiliation varchar(50) null,
	SecondOccupation varchar(100) null
)
comment '监护人信息';

