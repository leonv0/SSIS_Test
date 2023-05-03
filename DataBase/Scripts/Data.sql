﻿
CREATE TABLE [dbo].[Flight_Number](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Flight_Number] [varchar](128) NOT NULL,
	[Flight_Sheduled_Time] [time](0) NULL,
 CONSTRAINT [PK_Flight_Number_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Flight](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Flight_Number_ID] [int] NOT NULL,
	[Flight_Sheduled_Date] [date] NOT NULL,
	[Estimate_Arrival] [datetime] NULL,
	[Arrival] [datetime] NULL,
 CONSTRAINT [PK_Flight_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Flight_Number] FOREIGN KEY([Flight_Number_ID])
REFERENCES [dbo].[Flight_Number] ([ID])
GO

ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Flight_Number]
GO

CREATE TABLE [dbo].[Passenger](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Flight_ID] [bigint] NOT NULL,
	[Name] [varchar](128) NULL,
	[Reservation_Number] [varchar](14) NULL,
	[DocumentNumber] [nchar](36) NULL,
 CONSTRAINT [PK_Passenger_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_Flight] FOREIGN KEY([Flight_ID])
REFERENCES [dbo].[Flight] ([ID])
GO

ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_Flight]
GO
