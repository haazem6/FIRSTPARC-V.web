/*
  Warnings:

  - You are about to alter the column `CodeFilial` on the `DetailRemplacement` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `FA_Filiale` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `FA_Filiale` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `Filiale` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `Filiale` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `HistoriqueAnomalieGazoil` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `HistoriqueDemontage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `HistoriqueDemontage` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `LigneOrdreReparation` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `LigneOrdreReparation` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `LigneOrdreSortie` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `Location` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `MecanicienTravaux` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `Mission` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `OrdreAchatGasoil` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `OrdreAchatGasoil` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `OrdreEntrer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `OrdreEntrer` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `OrdreGazoil` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `OrdreGazoil` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `OrdreReparation` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `OrdreReparation` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `OrdreSortie` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `OrdreSortie` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `ORREP` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `Pompes` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `SerialiseArticleTemp` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `SerialiserArticle` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `SerieArticleConsommer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `SerieArticleConsommer` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `StockArticle` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `StockArticle` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `StockTemp` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `StockTemp` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilial` on the `TableFinalManqueNSerie2` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `Transfert` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilialS` on the `Transfert` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `CodeFilialDest` on the `Transfert` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - The primary key for the `Traveaux` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `CodeFilial` on the `Traveaux` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.

*/
BEGIN TRY

BEGIN TRAN;

-- DropForeignKey
ALTER TABLE [dbo].[HistoriqueAnomalieGazoil] DROP CONSTRAINT [FK_HistoriqueAnomalieGazoil_OrdreGazoil];

-- DropForeignKey
ALTER TABLE [dbo].[LigneOrdreReparation] DROP CONSTRAINT [FK_LigneOrdreReparation_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[LigneOrdreReparation] DROP CONSTRAINT [FK_LigneOrdreReparation_OrdreReparation];

-- DropForeignKey
ALTER TABLE [dbo].[LigneOrdreSortie] DROP CONSTRAINT [FK_LigneOrdreSortie_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[LigneOrdreSortie] DROP CONSTRAINT [FK_LigneOrdreSortie_OrdreSortie];

-- DropForeignKey
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [FK_Location_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[OrdreAchatGasoil] DROP CONSTRAINT [FK_OrdreAchatGasoil_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[OrdreEntrer] DROP CONSTRAINT [FK_OrdreEntrer_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[OrdreGazoil] DROP CONSTRAINT [FK_OrdreGazoil_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[OrdreReparation] DROP CONSTRAINT [FK_OrdreReparation_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[OrdreSortie] DROP CONSTRAINT [FK_OrdreSortie_Filiale];

-- DropForeignKey
ALTER TABLE [dbo].[Transfert] DROP CONSTRAINT [FK_Transfert_Filiale1];

-- DropForeignKey
ALTER TABLE [dbo].[Transfert] DROP CONSTRAINT [FK_Transfert_Filiale];

-- DropIndex
DROP INDEX [index_SerialiserArticle] ON [dbo].[SerialiserArticle];

-- DropIndex
DROP INDEX [index_CodeFilial] ON [dbo].[StockArticle];

-- AlterTable
ALTER TABLE [dbo].[DetailRemplacement] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[FA_Filiale] DROP CONSTRAINT [PK_FA_Filiale];
ALTER TABLE [dbo].[FA_Filiale] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[FA_Filiale] ADD CONSTRAINT PK_FA_Filiale PRIMARY KEY ([CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[Filiale] DROP CONSTRAINT [PK_Filiale];
ALTER TABLE [dbo].[Filiale] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[Filiale] ADD CONSTRAINT PK_Filiale PRIMARY KEY ([CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[HistoriqueAnomalieGazoil] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[HistoriqueDemontage] DROP CONSTRAINT [PK_HistoriqueDemontage];
ALTER TABLE [dbo].[HistoriqueDemontage] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[HistoriqueDemontage] ADD CONSTRAINT PK_HistoriqueDemontage PRIMARY KEY ([NumOrdreRepar],[RefArtic],[NSerie],[CodeFilial],[Prix],[CodeVehRem]);

-- AlterTable
ALTER TABLE [dbo].[LigneOrdreReparation] DROP CONSTRAINT [PK_LigneOrdreReparation];
ALTER TABLE [dbo].[LigneOrdreReparation] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[LigneOrdreReparation] ADD CONSTRAINT PK_LigneOrdreReparation PRIMARY KEY ([NumOrdreRepar],[CodeFilial],[RefArtic],[Prix],[CodeVehRem],[CodeOrgane],[codeCategRep],[NumLigne]);

-- AlterTable
ALTER TABLE [dbo].[LigneOrdreSortie] ALTER COLUMN [CodeFilial] INT NOT NULL;

-- AlterTable
ALTER TABLE [dbo].[Location] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[MecanicienTravaux] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[Mission] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[OrdreAchatGasoil] DROP CONSTRAINT [PK_OrdreAchatGasoil];
ALTER TABLE [dbo].[OrdreAchatGasoil] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[OrdreAchatGasoil] ADD CONSTRAINT PK_OrdreAchatGasoil PRIMARY KEY ([RefAch],[CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[OrdreEntrer] DROP CONSTRAINT [PK_OrdreEntrer];
ALTER TABLE [dbo].[OrdreEntrer] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[OrdreEntrer] ADD CONSTRAINT PK_OrdreEntrer PRIMARY KEY ([Ref_E],[CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[OrdreGazoil] DROP CONSTRAINT [PK_OrdreGasoil];
ALTER TABLE [dbo].[OrdreGazoil] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[OrdreGazoil] ADD CONSTRAINT PK_OrdreGasoil PRIMARY KEY ([NumOrdre],[CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[OrdreReparation] DROP CONSTRAINT [PK_OrdreReparation];
ALTER TABLE [dbo].[OrdreReparation] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[OrdreReparation] ADD CONSTRAINT PK_OrdreReparation PRIMARY KEY ([NumOrdreRepar],[CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[OrdreSortie] DROP CONSTRAINT [PK_OrdreSortie];
ALTER TABLE [dbo].[OrdreSortie] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[OrdreSortie] ADD CONSTRAINT PK_OrdreSortie PRIMARY KEY ([Ref_E],[CodeFilial]);

-- AlterTable
ALTER TABLE [dbo].[ORREP] ALTER COLUMN [CodeFilial] INT NOT NULL;

-- AlterTable
ALTER TABLE [dbo].[Pompes] ALTER COLUMN [CodeFilial] INT NOT NULL;

-- AlterTable
ALTER TABLE [dbo].[SerialiseArticleTemp] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[SerialiserArticle] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[SerieArticleConsommer] DROP CONSTRAINT [PK_SerieArticleConsommer];
ALTER TABLE [dbo].[SerieArticleConsommer] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[SerieArticleConsommer] ADD CONSTRAINT PK_SerieArticleConsommer PRIMARY KEY ([NumOrdreRepar],[RefArtic],[NSerie],[CodeFilial],[Prix],[CodeVehRem]);

-- AlterTable
ALTER TABLE [dbo].[StockArticle] DROP CONSTRAINT [PK_StockArticle];
ALTER TABLE [dbo].[StockArticle] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[StockArticle] ADD CONSTRAINT PK_StockArticle PRIMARY KEY ([RefArtic],[PrixUnit],[CodeFilial],[CodeCl]);

-- AlterTable
ALTER TABLE [dbo].[StockTemp] DROP CONSTRAINT [PK_StockTemp];
ALTER TABLE [dbo].[StockTemp] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[StockTemp] ADD CONSTRAINT PK_StockTemp PRIMARY KEY ([CodeTransfert],[RefArtic],[PrixUnit],[CodeFilial],[CodeCl]);

-- AlterTable
ALTER TABLE [dbo].[TableFinalManqueNSerie2] ALTER COLUMN [CodeFilial] INT NULL;

-- AlterTable
ALTER TABLE [dbo].[Transfert] DROP CONSTRAINT [PK_Transfert];
ALTER TABLE [dbo].[Transfert] ALTER COLUMN [CodeFilialS] INT NOT NULL;
ALTER TABLE [dbo].[Transfert] ALTER COLUMN [CodeFilialDest] INT NULL;
ALTER TABLE [dbo].[Transfert] ADD CONSTRAINT PK_Transfert PRIMARY KEY ([RefTransf],[CodeFilialS]);

-- AlterTable
ALTER TABLE [dbo].[Traveaux] DROP CONSTRAINT [PK_Traveaux];
ALTER TABLE [dbo].[Traveaux] ALTER COLUMN [CodeFilial] INT NOT NULL;
ALTER TABLE [dbo].[Traveaux] ADD CONSTRAINT PK_Traveaux PRIMARY KEY ([NumOrdreRepar],[CodeFilial],[TravDem],[CodeVehRem],[codeAuto]);

-- CreateIndex
CREATE INDEX [index_SerialiserArticle] ON [dbo].[SerialiserArticle]([RefAch], [CodeFilial], [RefArtic], [PrixUnit]);

-- CreateIndex
CREATE INDEX [index_CodeFilial] ON [dbo].[StockArticle]([CodeFilial]);

-- AddForeignKey
ALTER TABLE [dbo].[HistoriqueAnomalieGazoil] ADD CONSTRAINT [FK_HistoriqueAnomalieGazoil_OrdreGazoil] FOREIGN KEY ([NumOrdre], [CodeFilial]) REFERENCES [dbo].[OrdreGazoil]([NumOrdre],[CodeFilial]) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[LigneOrdreReparation] ADD CONSTRAINT [FK_LigneOrdreReparation_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[LigneOrdreReparation] ADD CONSTRAINT [FK_LigneOrdreReparation_OrdreReparation] FOREIGN KEY ([NumOrdreRepar], [CodeFilial]) REFERENCES [dbo].[OrdreReparation]([NumOrdreRepar],[CodeFilial]) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[LigneOrdreSortie] ADD CONSTRAINT [FK_LigneOrdreSortie_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[LigneOrdreSortie] ADD CONSTRAINT [FK_LigneOrdreSortie_OrdreSortie] FOREIGN KEY ([Ref_E], [CodeFilial]) REFERENCES [dbo].[OrdreSortie]([Ref_E],[CodeFilial]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Location] ADD CONSTRAINT [FK_Location_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[OrdreAchatGasoil] ADD CONSTRAINT [FK_OrdreAchatGasoil_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[OrdreEntrer] ADD CONSTRAINT [FK_OrdreEntrer_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[OrdreGazoil] ADD CONSTRAINT [FK_OrdreGazoil_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[OrdreReparation] ADD CONSTRAINT [FK_OrdreReparation_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[OrdreSortie] ADD CONSTRAINT [FK_OrdreSortie_Filiale] FOREIGN KEY ([CodeFilial]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[Transfert] ADD CONSTRAINT [FK_Transfert_Filiale1] FOREIGN KEY ([CodeFilialDest]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[Transfert] ADD CONSTRAINT [FK_Transfert_Filiale] FOREIGN KEY ([CodeFilialS]) REFERENCES [dbo].[Filiale]([CodeFilial]) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
