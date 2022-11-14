use Marketim
CREATE TABLE AyrilanCalisanlar
(
Id int identity(1,1)Primary key,
AyrilanId int,
tarih date
)
go
CREATE TRIGGER silin
ON personel
AFTER DELETE
AS
BEGIN
DECLARE @personelId int
SELECT @personelId=ID
FROM deleted
INSERT INTO AyrilanCalisanlar VALUES (@personelId, GETDATE())
END
DELETE FROM personel WHERE ID=2
SELECT *FROM personel
SELECT *FROM AyrilanCalisanlar
