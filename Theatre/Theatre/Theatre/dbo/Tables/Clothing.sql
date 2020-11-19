CREATE TABLE [dbo].[Clothing] (
    [idClothes]     INT           NOT NULL,
    [TypeOfClohing] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Clothing] PRIMARY KEY CLUSTERED ([idClothes] ASC)
);

