/*
  Warnings:

  - Added the required column `Heure` to the `CK_Entete` table without a default value. This is not possible if the table is not empty.

*/
BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[CK_Entete] ADD [Date] DATE NOT NULL CONSTRAINT [CK_Entete_Date_df] DEFAULT CURRENT_TIMESTAMP,
[Heure] TIME NOT NULL;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
