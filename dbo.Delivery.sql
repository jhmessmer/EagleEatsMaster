CREATE TABLE [dbo].[Delivery] (
    [Delivery_Id]    INT            IDENTITY (1, 1) NOT NULL,
    [Driver_Id]      INT            NULL,
    [Route_Id]       INT            NULL,
    [DeliveryStatus] NCHAR (10)     NULL,
    [OrderTime]      DATETIME       NULL,
    [ArrivalTime]    DATETIME       NULL,
    [TotalCost]      DECIMAL (8, 2) NULL,
    [Tip]            DECIMAL (8, 2) NULL,
    [Tax]            DECIMAL (8, 2) NULL,
    [ETA]            FLOAT (53)     NULL,
	[Notes]			 VARCHAR(200)	NULL,
    PRIMARY KEY CLUSTERED ([Delivery_Id] ASC),
    CONSTRAINT [FK_Delivery_Driver] FOREIGN KEY ([Driver_Id]) REFERENCES [dbo].[User] ([User_Id]),
    CONSTRAINT [FK_Delivery_Route] FOREIGN KEY ([Route_Id]) REFERENCES [dbo].[Route] ([Route_Id])
);

