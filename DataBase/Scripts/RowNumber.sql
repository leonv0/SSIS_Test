declare @i int
set @i = 0
update [dbo].[ImportPnr]
set  @i = [RowNumber] = @i+1 
where [FileName] = '?' 