CREATE TABLE [caps].[List] (
    [binListId]       BIGINT        IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [bin]             VARCHAR (12)  NULL,
    [cardLength]      TINYINT       NULL,
    [luhn]            BIT           NULL,
    [brandName]       VARCHAR (25)  NULL,
    [creditDebitType] VARCHAR (20)  NULL,
    [cardLevel]       VARCHAR (50)  NULL,
    [prepaid]         BIT           NULL,
    [countryCode]     VARCHAR (3)   NULL,
    [bankName]        VARCHAR (256) NULL,
    [bankWebsite]     VARCHAR (255) NULL,
    [bankCity]        VARCHAR (50)  NULL,
    [bankPhone]       VARCHAR (30)  NULL,
    [ModifyDtTm]      DATETIME      NULL,
    [CreateDtTm]      DATETIME      NULL,
    [Action]          VARCHAR (10)  NULL,
    [c1]              NCHAR (10)    NULL,
    [c2]              NCHAR (10)    NULL,
    [demo2]           NCHAR (4)     NULL,
    PRIMARY KEY CLUSTERED ([binListId] ASC)
);

