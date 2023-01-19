--Sélectionnez le nom des juges ayant rendu un jugement lors d’un procès 


SELECT personne.Nom FROM penal.personne INNER JOIN penal.proces on CNI= CNIJuge;




--sélectionnez la décision du procès pour des suspect coupables 


SELECT proces.Decision FROM penal.suspect INNER JOIN penal.proces on CNI=CNISuspect  WHERE Culpabilite like '%oui%';




--sélectionnez le nom et prénom des suspect n’étant pas français  


SELECT suspect.nom, suspect.prenom FROM penal.suspect EXCEPT SELECT suspect.nom FROM penal.suspect WHERE CNI like 'IDFRA%';




--triez les tribunaux par degrés de juridiction 


SELECT tribunal.NomLieu FROM penal.tribunal GROUP BY tribunal.NomLieu ORDER BY tribunal.DegresJuridiction;




--Donnez le crime du suspect PONS


SELECT suspect.Motif FROM penal.suspect WHERE Nom ='PONS'




--(BONUS) trouvez l’emplacement de la détention de l’incarcéré CATALDI Mario