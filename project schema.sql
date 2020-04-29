 Create table team(
   teamname Char(10) Not null,
   top varchar(10) Not null,
   jungle varchar(10) Not null,
   mid varchar(10) Not null,
   bottom varchar(10) Not null,
   support varchar(10) Not null,
   CONSTRAINT			team_PK		PRIMARY KEY(teamname)
   );
   
   CREATE TABLE RANKING(
	rankNo		Int			NOT NULL,
	Tname			Char(10)		NOT NULL,
	Serieswin			Int  	Not NULL,
	Serieslose		Int	 Not NULL,
    winrate varchar(10) not Null,
    Gamewin  Int Not null,
    Gamelose Int Not null,
    netwin varchar(10) not null,
	CONSTRAINT			RANKING_PK		PRIMARY KEY(rankNO),
    CONSTRAINT			RANKING_FK1	FOREIGN KEY (Tname)
							REFERENCES TEAM(teamname)
	);
    
    CREATE TABLE game(
    gameNO int not null,
	dateofgame varchar(20) Not null,
    team1 char(10) Not null,
    team1WL char(5) Not null,
    team2 char(10) Not null,
    team2WL char(5) Not null,
    score varchar(10) Not null,
	CONSTRAINT			game_PK		PRIMARY KEY(gameNO),
    CONSTRAINT			game_FK1	FOREIGN KEY (team1)
							REFERENCES TEAM(teamname),
     CONSTRAINT			game_FK2	FOREIGN KEY (team2)
							REFERENCES TEAM(teamname)
	);
    