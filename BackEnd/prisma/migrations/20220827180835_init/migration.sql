/*
  Warnings:

  - You are about to alter the column `Oui` on the `CK_Ligne` table. The data in that column could be lost. The data in that column will be cast from `NVarChar(1000)` to `VarChar(200)`.
  - You are about to alter the column `Non` on the `CK_Ligne` table. The data in that column could be lost. The data in that column will be cast from `NVarChar(1000)` to `VarChar(200)`.

*/
BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[CK_Ligne] ALTER COLUMN [Oui] VARCHAR(200) NOT NULL;
ALTER TABLE [dbo].[CK_Ligne] ALTER COLUMN [Non] VARCHAR(200) NOT NULL;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
