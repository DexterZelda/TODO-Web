CREATE TABLE utilisateurs (
id INT not null identity (1,1),
nom NVARCHAR(50) not null,
mdp NVARCHAR(50) not null
);

/** pour le PB d'enregistrement des caractères spéciaux une solution partielle ? :
 * https://github.com/microsoft/sql-server-samples/blob/master/samples/features/unicode/CheckStorageReq_CurrDB.sql
 * https://docs.microsoft.com/fr-fr/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15#utf8
 * https://docs.microsoft.com/fr-fr/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15
 */
