/*
Added
*/

CREATE PROCEDURE [caps].[find_sp1] 
    @sp_name VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT db,
           [name] as sp_name
    FROM
    (
        SELECT 'AESCryptoDB' AS DB,
               *
        FROM AESCryptoDB.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'CAPC' AS DB,
               *
        FROM CAPC.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'CAPP' AS DB,
               *
        FROM CAPP.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'CAPR' AS DB,
               *
        FROM CAPR.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'CAPT' AS DB,
               *
        FROM CAPT.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'CAPX' AS DB,
               *
        FROM CAPX.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'Charity' AS DB,
               *
        FROM Charity.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'processorDB' AS DB,
               *
        FROM processorDB.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'RepositoryDB' AS DB,
               *
        FROM RepositoryDB.sys.objects
        WHERE type in ( N'P', N'PC' )
        union all
        SELECT 'ReportingDB' AS DB,
               *
        FROM ReportingDB.sys.objects
        WHERE type in ( N'P', N'PC' )
    ) ALL_DB
    WHERE name = @sp_name
END