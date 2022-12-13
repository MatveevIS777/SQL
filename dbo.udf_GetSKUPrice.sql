IF OBJECT_ID (Ndbo.udf_GetSKUPrice, FN) IS NOT NULL  
DROP FUNCTION dbo.udf_GetSKUPrice;  
GO

CREATE FUNCTION dbo.udf_GetSKUPrice (@ID_SKU INT)
RETURNS DECIMAL(18,2)
 BEGIN
  DECLARE @SUMMA DECIMAL(18,2)
  SET @SUMMA =(select sum([value])/ sum(Quantity) FROM dbo.Basket b where b.ID_SKU = @ID_SKU)
  RETURN @SUMMA
 END
 GO
