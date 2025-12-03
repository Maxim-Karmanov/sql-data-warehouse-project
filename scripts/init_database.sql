/*
=================================================
Создание базы данных и схем
=================================================
Цель скрипта:
	Этот скрипт создает новую БД 'DataWareHouse' после проверки на существование: если существует, то дропает старую и создает новую.
	Также скрипт создает 3 схемы внутри новой БД: 'bornze', 'silver', 'gold'.

ПРЕДУПРЕЖДЕНИЕ:
	Данный скрипт удаляет БД 'DataWareHouse' если она уже существует.
*/

USE MASTER;
GO

-- Пересоздаем БД 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

-- Создаем БД 'DataWareHouse'
CREATE DATABASE DataWareHouse;

USE DataWareHouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
