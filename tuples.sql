/*pour heritage table fille, le remplisage des tuples se fait en ré-indiquant la clé primaire de la table mère*/

/*ATTENTION : bien verifier cohérence des liens (genre que la vitime reste la victime dans les autres tables, etc...)*/

/*ATTENTION : ne pas mettre de virgule à la dernière insertion de tuples*/

INSERT INTO penal.personne (CNI, Nom, Prenom, DateDeNaissance) VALUES 
	('IDFRAPONS<1709931309874847295GASPARD0212074M2', 'PONS', 'Gaspard','2002-12-07'),
	('IDFRAGUEBASI<0485678234950682648ELIAS0112226M3','GUEBASI', 'Elias','2001-12-22'),
	('IDARGMESSI<0983647589126574958LIONEL9811295M4', 'MESSI', 'Lionel','1998-11-29'),
	('IDFRALASSIK<6537007385801040799KYLIAN0009091M6', 'LASSIK', 'Kylian','2000-09-09'),
	('IDFRAREPETI<23159410134174459414ARTHUR0303059M4', 'REPETI', 'Arthur','2003-03-05'),
	('IDMARKHEROUA<995131014621212561053RAYAN0304170M5', 'KHEROUA','Rayan','2003-04-17'),
	('IDDZADOUMA<4259173461642110211010IDRIS0409154M7', 'DOUMA', 'Idris','2004-09-15'),
	('IDFRASALY<<OUSSENI<9215192489101849JUNIOR9905116M8', 'SALY OUSSENI','Junior','1999-05-11'),
	('IDFRACASTEL<311410731042226411363ROBIN0201080M7','CASTEL','Robin','2002-01-08'),
	('IDFRASIDDIQUI<781010326182754658983FARAZ0206134M1','SIDDIQUI','Faraz','2002-06-13'),
	('IDITACATALDI<569814927710827591078MARIO8004073M2','CATALDI','Mario','1980-04-07'),
	('IDFRADUBOIS<424712783510881017522ANTOINE7508296M4','DUBOIS','Antoine','1975-08-29'),
	('IDFRADUCHENE<10763108343991067121013MICHEL8812123M1','DUCHENE','Michel','1888-12-12'),
	('IDJAPKUJO<5481910615610458266104JOLINE8598169F0','KUJO','Joline','1985-08-16'),
	('IDUSAELTON<125109719967261751910JOHN4703274F8','ElTON','John','1947-03-27'),
	('IDRUSTETRIS<121107129697176103711REINAE7409023F8','TETRIS','Reinae','1974-09-02'),
	('IDFRASAE<86710954636311685974BENOIS7409021M4','SAE','Benois','1974-09-02'),
	('IDFRARICHARD<108984822119877841105RICHARD740902154','RICHARD','Richard','1945-10-28'),
	('IDFRAMATTEUS<9117372117697191718MALEKA740902154','MATEUS','Maleka','2000-07-15'),
	('IDFRAKERVIEL<9131122285148696614JEROME7701114M7','KERVIEL','Jérôme','1977-01-11'),
	('IDFRALAMCHICHI<5856834638023505050AYOUB0304187M9','LAMCHICHI','Ayoub','2003-04-18'),
	('Ministère Public', 'ETAT', 'Français', '1790-08-24' ),
	('Ministère de la Justice', 'Administration', 'Française' '1791-04-17'),
	('Cour de Cassation', 'JUSTICE', 'Française', '1790-12-01' )
;

INSERT INTO penal.victime (CNI, plainte) VALUES
	('IDFRARICHARD<108984822119877841105RICHARD740902154', 'coups et blessures'),
	('Ministère de la Justice', "Poursuite pour complisme génral contre l'ordre établi, la justice et ses différents représentants"),
;


INSERT INTO penal.lieu (Adresse, NomLieu) VALUES
	('25 rue IUT, 75006 PARIS FRANCE','Tribunal Merveille'),
	('173 Av. Paul Vaillant Couturier, 93000 Bobigny', 'Tribunal Judiciaire de Bobigny'),
	('Parvis du tribunal de Paris, 75017 Paris, FRANCE', 'Tribunal de Paris'),
	('11 rue de Cambrai, 75001 Paris, FRANCE', 'Tribunal de Police'),
	('191 Av. Frederic et Irene Joliot Curie 179, 92020 Nanterre', "Cours d'appel de Versailles"),
	('34 Quai des Orfèvres 75001 Paris, FRANCE', "Le Palais de Justice de Paris"),
	('6 boulevard du Palais, 75001, Paris, FRANCE' 'Cour de Cassation'),
	('3 de la place Vendôme, 75001 Paris, FRANCE', "La Chancellerie"),
	
	('San Francisco, CA 94133, USA','Alcatraz'),
	('5880 CO-67, Florence, CO 81226, United States', 'USP Florence ADMAX'),
	('42 rue de ka Santé, 75014 Paris, FRANCE','Centre pénitentiaire de Paris-La Santé'),
	('1 Allée des Thuyas 94260 Fresnes, FRANCE','Centre pénitentiaire de Fresnes'),
	('7 Av. des Peupliers, 91700 Fleury-Mérogis, FRANCE', "Maison d'arrêt de Fleury-Mérogis"),
	
	('151 Rue de la Nouvelle France, 93100 Montreuil', 'STATION BP MONTREUIL NOUVELLE FRANCE'),
	('Bd Périphérique, 75020 Paris', 'Périphérique Parisien(E15),sortie Pte Montreuil'),
	('16 rue Redemption, 93056 Montreuil, FRANCE','Maison de retraite'),
	('16 Rue des Trois Bornes, 75011 Paris', 'Café des Complots')

;

INSERT INTO penal.incarceration (IDEcrou, DateMiseIncarceration, Liberation, NumCellule, MaisonArret) VALUES
	('123456789','2023-06-06','2023-06-29','145', '145 rue DES DETENUS, 00000 ALCATRAZ INCONNU'),
	('289256','2007-09-23', '2012-04-28', '40','7 Av. des Peupliers, 91700 Fleury-Mérogis, FRANCE'),
	('0451', '2023-05-21', '2101-07-04', NULL,'5880 CO-67, Florence, CO 81226, United States') 
;

INSERT INTO penal.suspect (CNI, NumDossier, Motif, Culpabilite, Defense, IDEcrou) VALUES
	('IDFRAREPETI<23159410134174459414ARTHUR0303059M4','548963412', 'attaque à main armée d’une fourchette dans la rue contre un passant', 'oui', 'j’avais faim', '123456789'),
	('IDDZADOUMA<4259173461642110211010IDRIS0409154M7','458327010','Destruction involontaire d’une station service en faisant une manoeuvre en twingo', 'oui', 'je conduis bien monsieur, sur la tête de ma mère,c’est la pompe qui était mal placée!', NULL),
	('IDFRASALY<<OUSSENI<9215192489101849JUNIOR9905116M8','001577896','détournement de marchandises importées(papeterie) dans un entrepôt de logistique','non','j’ai oublié les papiers d’importations, juste une petite maladresse', NULL),
	('IDFRAPONS<1709931309874847295GASPARD0212074M2','000000001','accusé d’être responsable d’un groupe organisé terroriste contre la justice française et ayant assassiné de nombreux juges','non','je ne peut pas l’avoir fait, je suis juge !', NULL),
	('IDFRACASTEL<311410731042226411363ROBIN0201080M7','001478555','Ivre au service, en pleine patrouille, il s’endort au volant et stationne sur un rond point','oui','sans commentaire', NULL),
	('IDFRASIDDIQUI<781010326182754658983FARAZ0206134M','000155477','a grillé un stop pour laisser passer une ambulance','non',"pardon, monsieur le magistrat, je mérite d'être pénalement contraint", NULL),
	('IDITACATALDI<569814927710827591078MARIO8004073M2','245555555',"infiltration malveillante dans la base de données de la nsa",'non',"Votre honneur, mon client devait préparer un td pour ses élèves", '0451'),
	('IDFRAKERVIEL<9131122285148696614JEROME7701114M7', '5874733', 'introduction frauduleuse de données dans un système de traitement automatisé', 'fautes professionnelles sanctionnables, et pas un délit', '289256')
;

INSERT INTO penal.agent (CNI, Matricule, NumArmeService) VALUES
	('IDFRACASTEL<311410731042226411363ROBIN0201080M7','EUR08FR','18745F'),
	('IDFRASIDDIQUI<781010326182754658983FARAZ0206134M1','EUR09FR','125GDR'),
	('IDFRASAE<86710954636311685974BENOIS7409021M4','EUR10FR','554GGT'),
	('IDRUSTETRIS<121107129697176103711REINAE7409023F8', 'RUS049765', 'AK47-0459')
;

INSERT INTO penal.tribunal (Adresse, TypeJuridiction, DegresJuridiction) VALUES
	('25 rue IUT, 75006 PARIS FRANCE','correctionnel','1'),
	('11 rue de Cambrai, 75001 Paris, FRANCE', 'police','1'),
	('191 Av. Frederic et Irene Joliot Curie 179, 92020 Nanterre,' 'police', '1'),
	('191 Av. Frederic et Irene Joliot Curie 179, 92020 Nanterre,' 'correctionnel', '1'),
	('Parvis du tribunal de Paris, 75017 Paris, FRANCE', 'assises','1'),
	('Parvis du tribunal de Paris, 75017 Paris, FRANCE', 'assises','2'),
	('Parvis du tribunal de Paris, 75017 Paris, FRANCE', 'correctionnel','1'),
	('Parvis du tribunal de Paris, 75017 Paris, FRANCE', 'correctionnel','2'),
	('34 Quai des Orfèvres 75001 Paris, FRANCE', 'appel ,'2'),
	('6 boulevard du Palais, 75001, Paris, FRANCE', 'cassation', '3')


;

INSERT INTO penal.Enquete (IDEnquete, DateArrestation, CNIAgent, CNISuspect, Adresse, CNIVictime, Cloture) VALUES
	('75542132','2023-06-08','IDFRASAE<45684BENOIS740902154','IDFRAREPETI<23159410134174459414ARTHUR0303059M4','25 rue IUT, 75006 PARIS FRANCE','IDFRARICHARD<108984822119877841105RICHARD740902154','oui'),
	('400050', '2022-09-13','IDRUSTETRIS<121107129697176103711REINAE7409023F8', 'IDFRAPONS<1709931309874847295GASPARD0212074M2','16 Rue des Trois Bornes, 75011 Paris', 'Ministère de la Justice', 'oui' )
;

INSERT INTO penal.inventaire (IDPiece, Objet, Type, Etat, Adresse, IDEnquete) VALUES
	('114465','Telephone','Objet electronique','calcination, morsures multiples et traces de mastication','16 rue Redemption, 93056 MONTREUIL FRANCE','75542132'),
	('114466','Bombe dissimulée dans une voiture', 'Explosif', "Prête à l'emploi",'3 rue de Harlay, 75001 Paris, FRANCE','400050')
;

INSERT INTO penal.interrogatoire (DossierInterro, Comparution, Infraction, CNIJugeInstruction, CNISuspect) VALUES
	('RNB45','2','agression','IDFRARICHARD<108984822119877841105RICHARD740902154','IDFRAREPETI<23159410134174459414ARTHUR0303059M4'),
	('JRPF474288','8' 'complotisme et assassinat', 'IDMARKHEROUA<995131014621212561053RAYAN0304170M5', 'IDFRAPONS<1709931309874847295GASPARD0212074M2')
;

INSERT INTO penal.proces (Affaire, CNIJuge, CNIAvocatVictime, CNIAvocatSuspect, CNISuspect, CNIVictime, Tribunal, IDPiece, Decision, Appel) VALUES
	('REPETI el gourmand','IDFRAPONS<1709931309874847295GASPARD0212074M2','IDFRAMATTEUS<9117372117697191718MALEKA740902154',NULL,'IDFRAREPETI<23159410134174459414ARTHUR0303059M4','IDFRARICHARD<108984822119877841105RICHARD740902154','25 rue IUT, 75006 PARIS FRANCE','114465','coupable 15 ans','0'),
	("Affaire PONS, conspiration contre la Justice",'IDMARKHEROUA<995131014621212561053RAYAN0304170M5', NULL, NULL,'IDFRAPONS<1709931309874847295GASPARD0212074M2','Ministère de la Justice','34 Quai des Orfèvres 75001 Paris, FRANCE',NULL,'pourvoi en cassation', '0'),
("Affaire PONS, conspiration terroriste organisée contre l'Etat et la Justice Française",'Cour de Cassation', NULL, NULL,'IDFRAPONS<1709931309874847295GASPARD0212074M2','Ministère de la Justice','34 Quai des Orfèvres 75001 Paris, FRANCE','114466','relaxe', '1')
;







