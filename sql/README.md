# My Frequently Forgotten Facts (FFFs)
------

## 1. SQL Server 命令行工具 `sqlcmd` 的使用
``` cmd
sqlcmd -S DELL\SQLEXPRESS -U sa
```
See doc [here](https://msdn.microsoft.com/zh-cn/library/ms165702.aspx) and [here](https://msdn.microsoft.com/zh-cn/library/ms162773.aspx).
显示当前数据库所有表：
``` sql
select name from sysobjects where type='U'
go
```
SQL Server 不适合命令行使用，乖乖用 [SSMS](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms) 吧。
