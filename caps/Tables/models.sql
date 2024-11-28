CREATE TABLE [caps].[models] (
    [id]        INT                IDENTITY (1, 1) NOT NULL,
    [createdAt] DATETIMEOFFSET (7) NOT NULL,
    [updatedAt] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

