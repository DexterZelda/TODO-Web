CREATE TABLE utilisateurs (
id INT not null identity (1,1),
nom VARCHAR(100) not null,
mdp VARCHAR(100) not null
);

/** pour le PB d'enregistrement des caractères spéciaux une solution partielle : PB résolu :
 * Passage en UTF-8 jsp en POST car en GET cela fonctionne pour é = PB résolu OK dans les jsp
 * https://openclassrooms.com/forum/sujet/encodage-utf-8-caractere-dans-un-formulaire
 * 
 * Sinon des liens pertinents :
 * 
 * https://github.com/microsoft/sql-server-samples/blob/master/samples/features/unicode/CheckStorageReq_CurrDB.sql
 * https://docs.microsoft.com/fr-fr/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15#utf8
 * https://docs.microsoft.com/fr-fr/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15
 */
