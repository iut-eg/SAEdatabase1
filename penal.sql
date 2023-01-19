DROP SCHEMA IF EXISTS penal CASCADE;
CREATE SCHEMA penal;

/*commentaires
table GAV doit surement ê présente avant suspect pour clé étrangère  

*/
CREATE TABLE penal.personne(
	CNI VARCHAR(250),
	Nom VARCHAR(100),
	Prenom VARCHAR(100),
	DateDeNaissance DATE,
	CONSTRAINT pk_personne PRIMARY KEY (CNI)
);

CREATE TABLE penal.victime(
	plainte VARCHAR(300),
	CONSTRAINT pk_victime PRIMARY KEY (CNI)
) INHERITS (penal.personne);

CREATE TABLE penal.lieu(
	Adresse VARCHAR(200),
	NomLieu VARCHAR(300),
	CONSTRAINT pk_lieu PRIMARY KEY (Adresse)
);

CREATE TABLE penal.incarceration(
	IDEcrou INT,
	DateMiseIncarceration DATE,
	liberation DATE,
	NumCellule INT,
	MaisonArret VARCHAR(300),
	CONSTRAINT pk_incarceration PRIMARY KEY (IDEcrou),
	CONSTRAINT fk_incarceration_lieu FOREIGN KEY (MaisonArret) REFERENCES penal.lieu(Adresse)
);

CREATE TABLE penal.suspect(
	NumDossier VARCHAR(50),
	Motif VARCHAR(350),
	Culpabilite VARCHAR(50),
	Defense VARCHAR(350),
	IDEcrou INT,
	CONSTRAINT pk_suspect PRIMARY KEY (CNI),
	CONSTRAINT fk_suspect_incarceration FOREIGN KEY (IDEcrou) REFERENCES penal.incarceration(IDEcrou)
)INHERITS (penal.personne);

CREATE TABLE penal.agent(
	Matricule VARCHAR(50),
	NumArmeService VARCHAR(50),
	CONSTRAINT pk_agent PRIMARY KEY (CNI)
)INHERITS (penal.personne);

CREATE TABLE penal.tribunal(
	TypeJuridiction VARCHAR(100),
	DegresJuridciton VARCHAR(100),
	CONSTRAINT pk_tribunal PRIMARY KEY (Adresse)
)INHERITS(penal.lieu);


CREATE TABLE penal.Enquete(
	IDEnquete INT,
	DateArrestation DATE,
	CNIAgent VARCHAR(250),
	CNISuspect VARCHAR(250),
	Adresse VARCHAR(200),
	CNIVictime VARCHAR (250),
	Cloture VARCHAR(50),
	CONSTRAINT pk_arrestation PRIMARY KEY (IDEnquete),
	CONSTRAINT fk_arrestation_agent FOREIGN KEY (CNIAgent) REFERENCES penal.agent(CNI),
	CONSTRAINT fk_arrestation_suspect FOREIGN KEY (CNISuspect) REFERENCES penal.suspect(CNI),
	CONSTRAINT fk_arrestation_lieu FOREIGN KEY (Adresse) REFERENCES penal.lieu(Adresse),
	CONSTRAINT fk_arrestation_victime FOREIGN KEY (CNIVictime) REFERENCES penal.victime(CNI)
);

CREATE TABLE penal.inventaire(
	IDPiece INT,
	Objet VARCHAR(50),
	Type VARCHAR(300),
	Etat VARCHAR(300),
	Adresse VARCHAR(200),
	IDEnquete INT,
	CONSTRAINT pk_inventaire PRIMARY KEY (IDPiece),
	CONSTRAINT fk_inventaire_lieu FOREIGN KEY (Adresse) REFERENCES penal.lieu(Adresse),
	CONSTRAINT fk_inventaire_enquete FOREIGN KEY (IDEnquete) REFERENCES penal.enquete(IDEnquete)
);

CREATE TABLE penal.interrogatoire (
	DossierInterro INT,
	Comparution INT,
	Infraction VARCHAR(100),
	CNIJugeInstruction VARCHAR(250),
	CNISuspect VARCHAR(250),
	CONSTRAINT pk_interrogatoire PRIMARY KEY (DossierInterro),
	CONSTRAINT fk_interrogatoire_personne FOREIGN KEY (CNIJugeInstruction) REFERENCES penal.personne(CNI),
	CONSTRAINT fk_interrogatoire_suspect FOREIGN KEY (CNISuspect) REFERENCES penal.suspect(CNI)
);

CREATE TABLE penal.proces(
	Affaire VARCHAR (150),
	CNIJuge VARCHAR(250),
	CNIAvocatVictime VARCHAR(250),
	CNIAvocatSuspect VARCHAR(250),
	CNISuspect VARCHAR(250),
	CNIVictime VARCHAR(250),
	Tribunal VARCHAR(200),
	IDPiece INT,
	Decision VARCHAR(250),
	Appel INT,
	CONSTRAINT pk_proces PRIMARY KEY (Affaire),
	CONSTRAINT fk_proces_personnejuge FOREIGN KEY (CNIJuge) REFERENCES penal.personne(CNI),
	CONSTRAINT fk_proces_personneavovatV FOREIGN KEY (CNIAvocatVictime) REFERENCES penal.personne(CNI),
	CONSTRAINT fk_proces_personneavocatS FOREIGN KEY (CNIAvocatSuspect) REFERENCES penal.personne(CNI),
	CONSTRAINT fk_proces_Suspect FOREIGN KEY (CNISuspect) REFERENCES penal.suspect(CNI),
	CONSTRAINT fk_proces_personnevictime FOREIGN KEY (CNIVictime) REFERENCES penal.personne(CNI),
	CONSTRAINT fk_proces_tribunal FOREIGN KEY (Tribunal) REFERENCES penal.tribunal(Adresse),
	CONSTRAINT fk_proces_inventaire FOREIGN KEY (IDPiece) REFERENCES penal.inventaire(IDPiece)
);


