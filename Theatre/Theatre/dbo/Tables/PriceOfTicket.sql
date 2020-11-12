CREATE TABLE [dbo].[PriceOfTicket] (
    [idPriceOfTicket]     INT NOT NULL,
    [idTypeOfPerformance] INT NOT NULL,
    [idPerformance]       INT NOT NULL,
    [idDate]              INT NOT NULL,
    [PriceOfTicket]       INT NOT NULL,
    CONSTRAINT [PK_PriceOfTicket] PRIMARY KEY CLUSTERED ([idPriceOfTicket] ASC),
    CONSTRAINT [FK_PriceOfTicket_Date] FOREIGN KEY ([idDate]) REFERENCES [dbo].[Date] ([idDate]),
    CONSTRAINT [FK_PriceOfTicket_Performances] FOREIGN KEY ([idPerformance]) REFERENCES [dbo].[Performances] ([idPerformance]),
    CONSTRAINT [FK_PriceOfTicket_TypeOfPerformance] FOREIGN KEY ([idTypeOfPerformance]) REFERENCES [dbo].[TypeOfPerformance] ([idTypeOfPerformance])
);

