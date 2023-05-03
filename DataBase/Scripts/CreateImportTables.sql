if object_id('dbo.ImportPnr') is null
begin
	create table dbo.[ImportPnr] 
	(
		[ID] bigint not null identity(1,1),
		[FileName] varchar(256) not null,
		[RowNumber] int null, 
		Col1 varchar(256) null,
		Col2 varchar(256) null,
		Col3 varchar(256) null,
		Col4 varchar(256) null,

	)

	ALTER TABLE dbo.ImportPnr  ADD CONSTRAINT PK_dbo_ImportPnr_ID  PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	) WITH ( FILLFACTOR = 40)



CREATE NONCLUSTERED INDEX [X_dbo_ImportPnr_RowNumber_FileName] ON [dbo].[ImportPnr]
(
	[FileName] ASC,
	[RowNumber] ASC
)
end
GO

--ALTER TABLE [dbo].[]
--   ADD CONSTRAINT FK_ FOREIGN KEY (Flight_ID)
--      REFERENCES [dbo].[Flight] (ID)
--GO

