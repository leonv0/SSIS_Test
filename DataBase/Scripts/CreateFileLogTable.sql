if object_id('dbo.OperationLog') is null
begin
create table dbo.OperationLog 
(
	ID bigint not null identity(1,1) primary key,
	[FileName] varchar(256) not null,
	[FilePath] varchar(256) not null,
	[Stage] varchar(256) not null,
	[OperationDateTime] datetime not null default(getdate())
)
end