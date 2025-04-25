Crédit Agricole


/* Problématique : Trouvez tous les clients dont le sexe est "Homme". */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Sexe = 'Homme'; 



/* Problématique : Sélectionnez les clients qui n'ont pas de prêt en 
cours. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Prêt_En_Cours <> 'Oui'; 
ou 
SELECT * 
FROM Credit_Agricole_db 
WHERE Prêt_En_Cours != 'Oui'; 



/* Problématique : Trouvez les clients dont l'âge est supérieur à 30 ans. 
*/ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Age > 30; 



/* Problématique : Sélectionnez les clients dont le solde de compte est 
inférieur à 5000 euros. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Solde_Compte < 5000;

 

/* Problématique : Identifiez les clients ayant un score de crédit d'au 
moins 700. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Crédit_Score >= 700; 



/* Problématique : Recherchez les clients dont le nombre de transactions 
annuelles est de 20 ou 
moins. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Nombre_Transactions_Annuelles <= 20; 



/* Problématique : Sélectionnez les clients dont le type de compte est 
soit "Courant" soit 
"Épargne" */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Type_Compte IN ('Courant', 'Épargne'); 



/* Problématique : Trouvez les clients dont l'âge est compris entre 25 et 
35 ans. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Age BETWEEN 25 AND 35; 


 
/* Problématique : Recherchez les clients dont le nom de famille commence 
par "L". */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Nom LIKE 'L%'; 



/* Problématique : Identifiez les clients dont l'adresse email se termine 
par "@gmail.com" */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Email LIKE '%@gmail.com'; 


 
/* Problématique : Sélectionnez les clients dont le prénom commence par 
"A" et qui ont un compte 
de type "Épargne" ou "Investissement". */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Prénom LIKE 'A%' 
AND Type_Compte IN ('Épargne', 'Investissement'); 



/* Problématique : Trouvez les clients qui ont un âge supérieur à 40 ans 
et un solde de compte 
supérieur à 10 000 euros. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Age > 40 
AND Solde_Compte > 10000; 


 
/* Problématique : Sélectionnez les clients dont le statut est soit 
"Inactif" soit "Suspendu". */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Statut_Client = 'Inactif' OR Statut_Client = 'Suspendu'; 


 
/* Problématique : Trouvez les clients qui ont un prêt en cours et dont 
le revenu annuel est soit 
inférieur à 30 000 euros, soit supérieur à 100 000 euros. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE (Prêt_En_Cours = 'Oui' AND (Revenu_Annuel < 30000 OR Revenu_Annuel 
> 100000)); 



/* Problématique : Identifiez les clients qui n'ont pas de compte 
courant. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE NOT Type_Compte = 'Courant'; 


 
/* Problématique : Sélectionnez les clients dont l'âge est inférieur à 30 
ans et qui n'ont pas de prêt en 
cours. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Age < 30 AND NOT Prêt_En_Cours = 'Oui'; 



/* Problématique : Trouvez les clients qui ont soit un score de crédit 
supérieur à 750, soit un revenu 
annuel inférieur à 50 000 euros, mais qui ne sont pas de sexe "Homme". */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE (Crédit_Score > 750 OR Revenu_Annuel < 50000) AND NOT Sexe = 
'Homme'; 



/* Problématique : Créez une nouvelle colonne nommée "Catégorie_Age" qui 
classifie les clients en 
"Jeune" (moins de 30 ans), "Adulte" (entre 30 et 60 ans) et "Senior" 
(plus de 60 ans). */ 
SELECT *, 
CASE 
WHEN Age < 30 THEN 'Jeune' 
WHEN Age BETWEEN 30 AND 60 THEN 'Adulte' 
ELSE 'Senior' 
END AS Catégorie_Age 
FROM Credit_Agricole_db; 



/* Problématique : Créez une nouvelle colonne "Catégorie_Revenu" qui 
indique si le revenu annuel du 
client est "Bas" (moins de 50 000 euros), "Moyen" (entre 50 000 et 100 
000 euros) ou "Élevé" (plus 
de 100 000 euros). */ 
SELECT *, 
CASE 
WHEN Revenu_Annuel < 50000 THEN 'Bas' 
WHEN Revenu_Annuel BETWEEN 50000 AND 100000 THEN 'Moyen' 
ELSE 'Élevé' 
END AS Catégorie_Revenu 
FROM Credit_Agricole_db; 



/* Problématique : Ajoutez une colonne "État_Compte" pour indiquer si le 
compte est "Actif" (solde 
supérieur à 0) ou "Inactif" (solde égal à 0). */ 
SELECT *, 
CASE 
WHEN Solde_Compte > 0 THEN 'Actif' 
ELSE 'Inactif' 
END AS État_Compte 
FROM Credit_Agricole_db; 



/* Problématique : Créez une colonne "Fiabilité_Crédit" qui classe les 
clients en "Faible", "Moyen", et 
"Élevé" basé sur leur score de crédit (respectivement moins de 600, entre 
600 et 750, plus de 750). */ 
SELECT *, 
CASE 
WHEN Crédit_Score < 600 THEN 'Faible' 
WHEN Crédit_Score BETWEEN 600 AND 750 THEN 'Moyen' 
ELSE 'Élevé' 
END AS Fiabilité_Crédit 
FROM Credit_Agricole_db; 



/* Problématique : Sélectionnez les clients dont l'âge est supérieur à 50 
ans, le revenu annuel est 
inférieur à 75 000 euros, et qui ont effectué plus de 10 transactions 
cette année. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Age > 50 
AND Revenu_Annuel < 75000 
AND Nombre_Transactions_Annuelles > 10; 


 
/* Problématique : Trouvez les clients qui ont soit un score de crédit 
supérieur à 700, soit un revenu 
annuel supérieur à 100 000 euros, et qui ont un compte courant ou 
d'épargne. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE (Crédit_Score > 700 OR Revenu_Annuel > 100000) 
AND Type_Compte IN ('Courant', 'Épargne'); 



/* Problématique : Identifiez les clients qui n'ont pas de prêt en cours 
(prêt différent de "Oui") et 
dont le solde du compte est soit inférieur à 1 000 euros, soit supérieur 
à 50 000 euros. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE NOT Prêt_En_Cours = 'Oui' 
AND (Solde_Compte < 1000 OR Solde_Compte > 50000); 


 
/* Problématique : Sélectionnez les clients dont le nom commence par "M", 
qui ont entre 30 et 40 
ans, et dont le nombre de transactions annuelles est inférieur à 20. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Nom LIKE 'M%' 
AND Age BETWEEN 30 AND 40 
AND Nombre_Transactions_Annuelles < 20; 



/* Problématique : Trouvez les clients dont l'âge est compris entre 18 et 
25 ans ou entre 65 et 75 
ans, et qui ont un score de crédit supérieur à 650. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE (Age BETWEEN 18 AND 25 OR Age BETWEEN 65 AND 75) 
AND Crédit_Score > 650; 


 
/* Problématique : Trouvez les clients qui ont un "Crédit_Score" élevé 
(plus de 750) et qui sont 
actifs, et créez une colonne "Statut_Privilégié" qui indique "Oui" pour 
les clients ayant un revenu 
annuel supérieur à 100 000 euros et "Non" pour les autres. */ 
SELECT *, 
CASE 
WHEN Revenu_Annuel > 100000 THEN 'Oui' 
ELSE 'Non' 
END AS Statut_Privilégié 
FROM Credit_Agricole_db 
WHERE Crédit_Score > 750 AND Statut_Client = 'Actif'; 



/* Problématique : Sélectionnez les clients de moins de 35 ans ou ayant 
plus de 20 transactions 
annuelles, et créez une colonne "Priorité_Client" qui classe les clients 
comme "Haute" si leur 
solde de compte est supérieur à 50 000 euros, sinon "Normale". */ 
SELECT *, 
CASE 
WHEN Solde_Compte > 50000 THEN 'Haute' 
ELSE 'Normale' 
END AS Priorité_Client 
FROM Credit_Agricole_db 
WHERE Age < 35 OR Nombre_Transactions_Annuelles > 20; 



/* Problématique : Identifiez les clients qui n'ont pas de prêt en cours 
et dont le nom de famille 
commence par "L", et ajoutez une colonne "Eligible_Offre_Speciale" qui 
indique "Oui" si le client a 
un compte épargne ou un compte courant avec un solde supérieur à 30 000 
euros, sinon "Non". */ 
SELECT *, 
CASE 
WHEN Type_Compte IN ('Épargne', 'Courant') AND Solde_Compte > 30000 
THEN 'Oui' 
ELSE 'Non' 
END AS Eligible_Offre_Speciale 
FROM Credit_Agricole_db 
WHERE NOT Prêt_En_Cours = 'Oui' AND Nom LIKE 'L%'; 


 
/* Problématique : Sélectionnez les clients dont la date d'ouverture de 
compte est supérieure au 
1er janvier 2020. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Date_Ouverture_Compte > '2020-01-01'; 



/* Problématique : Sélectionnez les clients dont la dernière transaction 
a été effectuée en janvier 
2023. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Date_Dernière_Transaction BETWEEN '2023-01-01' AND '2023-01-31'; 



/* Problématique : Sélectionnez les clients qui remplissent toutes les 
conditions suivantes : 
Âgés de plus de 30 ans mais de moins de 60 ans. 
Ayant un compte courant ou d'épargne, mais pas d'investissement. 
Avec un revenu annuel supérieur à 40 000 euros et inférieur à 100 000 
euros. 
Ayant un score de crédit supérieur à 400 mais inférieur à 800. 
Ayant ouvert leur compte avant 2018. 
Leur dernière transaction doit être supérieure à 100 euros mais 
inférieure à 10 000 euros. */ 
SELECT * 
FROM Credit_Agricole_db 
WHERE Age > 30 AND Age < 60 
AND Type_Compte IN ('Courant', 'Épargne') 
AND NOT Type_Compte = 'Investissement' 
AND Revenu_Annuel > 40000 AND Revenu_Annuel < 100000 
AND Crédit_Score > 400 AND Crédit_Score < 800 
AND Date_Ouverture_Compte < '2018-01-01' 
AND Montant_Dernière_Transaction > 100 AND Montant_Dernière_Transaction 
< 10000;