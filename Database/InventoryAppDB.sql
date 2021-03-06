USE [InventoryApp]
GO
/****** Object:  Table [dbo].[CompanyFinancialInfo]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyFinancialInfo](
	[ID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyInformation]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInformation](
	[CompnayInfoID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](50) NOT NULL,
	[PhoneNo] [int] NOT NULL,
	[FaxNo] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](50) NOT NULL,
	[MiscInfo] [nvarchar](50) NOT NULL,
	[Logo] [image] NOT NULL,
 CONSTRAINT [PK_CompanyInformation] PRIMARY KEY CLUSTERED 
(
	[CompnayInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[CustomerDetailsID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CustomerBalance] [float] NOT NULL,
	[CustomerCredit] [float] NOT NULL,
	[CustomerAddress] [nvarchar](50) NOT NULL,
	[CustomerAddressType] [nvarchar](50) NOT NULL,
	[CustomerPhoneNo] [int] NOT NULL,
	[CustomerEmail] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerOrders]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrders](
	[CustomerOrderID] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[Paid] [float] NOT NULL,
	[Balance] [float] NOT NULL,
 CONSTRAINT [PK_CustomerOrders] PRIMARY KEY CLUSTERED 
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerPaymentDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPaymentDetails](
	[CustomerPaymentDetailsID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[CurrentDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreditBalance] [float] NOT NULL,
	[Balance] [float] NOT NULL,
 CONSTRAINT [PK_CustomerPaymentDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerPaymentDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerPurchasingInformation]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPurchasingInformation](
	[CustomerPurchasingInfoID] [int] NOT NULL,
	[PricingScheme] [nvarchar](50) NOT NULL,
	[Currency] [nvarchar](50) NOT NULL,
	[Discount] [float] NOT NULL,
	[PaymentTerms] [nvarchar](50) NOT NULL,
	[TaxingScheme] [nvarchar](50) NOT NULL,
	[TaxExemptNo] [int] NOT NULL,
 CONSTRAINT [PK_CustomerPurchasingInformation] PRIMARY KEY CLUSTERED 
(
	[CustomerPurchasingInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DamagedProducts]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DamagedProducts](
	[DamagedProductID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[PartDamaged] [nvarchar](50) NOT NULL,
	[DamageEstimate] [float] NOT NULL,
 CONSTRAINT [PK_DamagedProducts] PRIMARY KEY CLUSTERED 
(
	[DamagedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DistributionCompanyDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionCompanyDetails](
	[DistributionCompanyDetailsID] [int] NOT NULL,
	[DistributionCompanyName] [nvarchar](50) NOT NULL,
	[DistributorID] [int] NOT NULL,
	[DistributionCompanyAddress] [nvarchar](50) NOT NULL,
	[DistributionCompanyTel] [int] NOT NULL,
	[DistributionCompanyEmail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DistributionCompanyDetails] PRIMARY KEY CLUSTERED 
(
	[DistributionCompanyDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DistributorDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributorDetails](
	[DistributorDetailsID] [int] NOT NULL,
	[DistributorName] [nvarchar](50) NOT NULL,
	[DistributorAddress] [nvarchar](50) NOT NULL,
	[DistributorCompanyID] [int] NOT NULL,
	[DistributorTel] [int] NOT NULL,
	[DistributorCellNo] [int] NOT NULL,
	[DistributorEmail] [nvarchar](50) NOT NULL,
	[DistributorCompanyDesignation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DistributorDetails] PRIMARY KEY CLUSTERED 
(
	[DistributorDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[EmployeeDetailsID] [int] NOT NULL,
	[EmpID] [int] NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[EmpDesignation] [nvarchar](50) NOT NULL,
	[EmpAddress] [nvarchar](50) NOT NULL,
	[EmpCellNo] [int] NOT NULL,
	[EmpPhoneNo] [int] NOT NULL,
	[EmpImage] [image] NOT NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[EmployeeDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FinancialYear]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialYear](
	[FinYearID] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Budget] [float] NOT NULL,
 CONSTRAINT [PK_FinancialYear] PRIMARY KEY CLUSTERED 
(
	[FinYearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryAdjustmentRecord]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryAdjustmentRecord](
	[InventoryAdjustmentRecordID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ItemAdjustmentNo] [int] NOT NULL,
	[AjustmentDate] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[OldQuantity] [int] NOT NULL,
	[Difference] [int] NOT NULL,
	[FinYearID] [int] NOT NULL,
	[Remarks] [nvarchar](50) NULL,
 CONSTRAINT [PK_InventoryAdjustmentRecord] PRIMARY KEY CLUSTERED 
(
	[InventoryAdjustmentRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryCostRecord]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryCostRecord](
	[InvenotryCostRecordID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemType] [nvarchar](50) NOT NULL,
	[UnitCost] [float] NOT NULL,
 CONSTRAINT [PK_InventoryCostRecord] PRIMARY KEY CLUSTERED 
(
	[InvenotryCostRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryCurrentStock]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryCurrentStock](
	[InventoryCurrentStockID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ItemCategory] [nvarchar](50) NOT NULL,
	[ItemLastVendor] [nvarchar](50) NOT NULL,
	[ItemPurchaseDate] [date] NOT NULL,
	[ItemLocation] [nvarchar](50) NOT NULL,
	[ItemQuantity] [int] NOT NULL,
	[ItemDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_InventoryCurrentStock] PRIMARY KEY CLUSTERED 
(
	[InventoryCurrentStockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryMovementHistory]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryMovementHistory](
	[InventoryMovementHistoryID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemType] [nvarchar](50) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL,
	[MovementDate] [date] NOT NULL,
	[MovementLocation] [nvarchar](50) NOT NULL,
	[OrderNo] [int] NOT NULL,
	[QuantityBefore] [int] NOT NULL,
	[CurrentQuantity] [int] NOT NULL,
	[QuantityAfter] [int] NOT NULL,
 CONSTRAINT [PK_InventoryMovementHistory] PRIMARY KEY CLUSTERED 
(
	[InventoryMovementHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryPriceRecord]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryPriceRecord](
	[InventoryPriceRecordID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemType] [nvarchar](50) NOT NULL,
	[UnityPrice] [float] NOT NULL,
 CONSTRAINT [PK_InventoryPriceRecord] PRIMARY KEY CLUSTERED 
(
	[InventoryPriceRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationBins]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationBins](
	[LocBinsID] [int] NOT NULL,
	[BinID] [int] NOT NULL,
	[BinName] [nvarchar](50) NOT NULL,
	[Qunatity] [int] NOT NULL,
 CONSTRAINT [PK_LocationBins] PRIMARY KEY CLUSTERED 
(
	[LocBinsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationDetails](
	[LocationDetailsID] [int] NOT NULL,
	[LocName] [nvarchar](50) NOT NULL,
	[PlaceLocated] [nvarchar](50) NOT NULL,
	[RawMaterialsQuantityHeld] [int] NOT NULL,
 CONSTRAINT [PK_LocationDetails] PRIMARY KEY CLUSTERED 
(
	[LocationDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationShelfs]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationShelfs](
	[LocationShelfsID] [int] NOT NULL,
	[LocID] [int] NOT NULL,
	[ShelfID] [int] NOT NULL,
	[ShelfName] [nvarchar](50) NOT NULL,
	[QuantityHeld] [int] NOT NULL,
 CONSTRAINT [PK_LocationShelfs] PRIMARY KEY CLUSTERED 
(
	[LocationShelfsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationShelfsBins]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationShelfsBins](
	[LocationShelfsBinsID] [int] NOT NULL,
	[LocID] [int] NOT NULL,
	[BinID] [int] NOT NULL,
	[ShelfID] [int] NOT NULL,
 CONSTRAINT [PK_LocationShelfsBins] PRIMARY KEY CLUSTERED 
(
	[LocationShelfsBinsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductBillOfMaterials]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBillOfMaterials](
	[ProductBillOfMaterialsID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ComponenetItem] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Cost] [float] NOT NULL,
 CONSTRAINT [PK_ProductBillOfMaterials] PRIMARY KEY CLUSTERED 
(
	[ProductBillOfMaterialsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ProductDetailsID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductCode] [int] NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[ProductCategory] [nvarchar](50) NOT NULL,
	[ProductNormalPrice] [float] NOT NULL,
	[ProductMarkup] [float] NOT NULL,
	[ProductActualPrice] [float] NOT NULL,
	[ProductPrice] [float] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ProductDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductExtraInfo]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductExtraInfo](
	[ProductExtraInfoID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductBarCode] [int] NOT NULL,
	[ProductReorderPoint] [nvarchar](50) NOT NULL,
	[ProductReorderQuantity] [int] NOT NULL,
	[ProductDefaultLocation] [nvarchar](50) NOT NULL,
	[ProductLastVendor] [nvarchar](50) NOT NULL,
	[ProductStandardUnitOfMeasurement] [nvarchar](50) NOT NULL,
	[ProductSalesUnitOfMeasurement] [nvarchar](50) NOT NULL,
	[ProductLength] [float] NOT NULL,
	[ProductWidth] [float] NOT NULL,
	[ProductHeight] [float] NOT NULL,
	[ProductWeigth] [float] NOT NULL,
	[Remarks] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductExtraInfo] PRIMARY KEY CLUSTERED 
(
	[ProductExtraInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMovementHistory]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMovementHistory](
	[ProductMovementHistoryID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductOrderNo] [int] NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL,
	[MovementDate] [date] NOT NULL,
	[MovementLocation] [nvarchar](50) NOT NULL,
	[ProductQuantityBefore] [int] NOT NULL,
	[ProductActualQuantity] [int] NOT NULL,
	[ProductQuantityAfter] [int] NOT NULL,
 CONSTRAINT [PK_ProductMovementHistory] PRIMARY KEY CLUSTERED 
(
	[ProductMovementHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductOrderHistory]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrderHistory](
	[ProductOrderHistoryID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[ProductOrderNo] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[ProductOrderDate] [date] NOT NULL,
	[ProductOrderStatus] [nvarchar](50) NOT NULL,
	[ProductOrderQuantity] [int] NOT NULL,
	[FinYearID] [int] NOT NULL,
	[SubTotal] [float] NOT NULL,
 CONSTRAINT [PK_ProductOrderHistory] PRIMARY KEY CLUSTERED 
(
	[ProductOrderHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductQuantityInformation]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductQuantityInformation](
	[ProductQuantityInformationID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[FinYearID] [int] NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[ProductQuantityOnHand] [int] NOT NULL,
	[ProductQuantityReserved] [int] NOT NULL,
	[ProductQuantityAvailable] [int] NOT NULL,
	[ProductQuantityPicked] [int] NOT NULL,
	[ProductOnOrder] [int] NOT NULL,
	[ProductQuantityInTransit] [int] NOT NULL,
 CONSTRAINT [PK_ProductQuantityInformation] PRIMARY KEY CLUSTERED 
(
	[ProductQuantityInformationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductVendors]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVendors](
	[ProductVendorID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[VendorPrice] [float] NOT NULL,
	[VendorProductCode] [int] NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_ProductVendors] PRIMARY KEY CLUSTERED 
(
	[ProductVendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseManagement]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseManagement](
	[PurchaseManagementID] [int] NOT NULL,
	[PurchaseCode] [int] NOT NULL,
	[ItemType] [nvarchar](50) NOT NULL,
	[RawMaterialID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_PurchaseManagement] PRIMARY KEY CLUSTERED 
(
	[PurchaseManagementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RawMaterialDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterialDetails](
	[RawMaterialsDetailsID] [int] NOT NULL,
	[RawMaterialID] [int] NOT NULL,
	[RawMaterialQuantity] [int] NOT NULL,
	[RawMaterialSupplierID] [int] NOT NULL,
	[RawMaterialVendorID] [int] NOT NULL,
	[RawMaterialType] [nvarchar](50) NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_RawMaterialDetails] PRIMARY KEY CLUSTERED 
(
	[RawMaterialsDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RawMaterialsCompleteInformation]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterialsCompleteInformation](
	[RawMaterialCompleteInfoID] [int] NOT NULL,
	[RawMaterialID] [int] NOT NULL,
	[RawMaterialPurchaseDate] [date] NOT NULL,
	[RawMaterialLocID] [int] NOT NULL,
	[AmountPaid] [float] NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_RawMaterialsCompleteInformation] PRIMARY KEY CLUSTERED 
(
	[RawMaterialCompleteInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RawMaterialSuppliers]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterialSuppliers](
	[RawMaterialSupplierID] [int] NOT NULL,
	[RawMaterialID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[DateSuppleid] [date] NOT NULL,
	[AmountPaid] [float] NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_RawMaterialSuppliers] PRIMARY KEY CLUSTERED 
(
	[RawMaterialSupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RawMaterialVendors]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterialVendors](
	[RawMaterialVendorsID] [int] NOT NULL,
	[RawMaterialID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[VendorName] [nvarchar](50) NOT NULL,
	[DateSupplied] [date] NOT NULL,
	[AmountPaid] [float] NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_RawMaterialVendors] PRIMARY KEY CLUSTERED 
(
	[RawMaterialVendorsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalesOrderDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetails](
	[SalesOrderID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ItemQuantity] [int] NOT NULL,
	[ItemUnitPrice] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[SubTotal] [float] NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SalesOrderDetails] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierDetails](
	[SupplierDetailsID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[SupplierTel] [int] NOT NULL,
	[SupplierAddress] [nvarchar](50) NOT NULL,
	[SupplierCellNo] [int] NOT NULL,
	[SupplierEmail] [nvarchar](50) NOT NULL,
	[SupplierWebsite] [nvarchar](50) NULL,
 CONSTRAINT [PK_SupplierDetails] PRIMARY KEY CLUSTERED 
(
	[SupplierDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransferStock]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferStock](
	[TransferStockID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ItemTransferNo] [int] NOT NULL,
	[TransferDate] [date] NOT NULL,
	[TransferStatus] [nvarchar](50) NOT NULL,
	[ItemQuantity] [int] NOT NULL,
	[TransferFromLocation] [nvarchar](50) NOT NULL,
	[TransferToLocation] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
	[FinYearID] [int] NOT NULL,
 CONSTRAINT [PK_TransferStock] PRIMARY KEY CLUSTERED 
(
	[TransferStockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserType] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorDetails]    Script Date: 23-Aug-15 03:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorDetails](
	[VendorDetailsID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[VendorName] [nvarchar](50) NOT NULL,
	[VendorAddress] [nvarchar](50) NOT NULL,
	[VendorPhoneNo] [int] NOT NULL,
	[VendorCellNo] [int] NOT NULL,
	[VendorWebsite] [nvarchar](50) NULL,
	[VendorEmailID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VendorDetails] PRIMARY KEY CLUSTERED 
(
	[VendorDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
