CREATE TABLE [dbo].[ClothingPrices] (
    [idClothesPrice] INT NOT NULL,
    [idClothes]      INT NOT NULL,
    [idActors]       INT NOT NULL,
    [idPerformance]  INT NOT NULL,
    [ClothesPrice]   INT NOT NULL,
    CONSTRAINT [PK_ClothingPrices] PRIMARY KEY CLUSTERED ([idClothesPrice] ASC),
    CONSTRAINT [FK_ClothingPrices_Actors] FOREIGN KEY ([idActors]) REFERENCES [dbo].[Actors] ([idActors]),
    CONSTRAINT [FK_ClothingPrices_Clothing] FOREIGN KEY ([idClothes]) REFERENCES [dbo].[Clothing] ([idClothes]),
    CONSTRAINT [FK_ClothingPrices_Performances] FOREIGN KEY ([idPerformance]) REFERENCES [dbo].[Performances] ([idPerformance])
);

