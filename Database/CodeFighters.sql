create database CodeFighterGame;
use CodeFighterGame;
create table USER_DETAILS (uniqueID varchar(100), FirstName varchar(100), LastName varchar(100),
			EmailID varchar(100), UserName varchar(100), Password varchar(100));
create table Game_History (uniqueID varchar(100), FirstName varchar(100), LastName varchar(100), 
			Level int, 
            Game1_Score double,
			Game2_Score double,
            Game3_Score double,
            Game4_Score double,
            Game5_Score double,
            Game6_Score double,
            Game7_Score double,
            Game8_Score double,
            Game9_Score double,
            Game10_Score double);
create table Game_History(Ranking int,uniqueID varchar(100), FirstName varchar(100), 
		LastName varchar(100), Level int);
create table Game_History (uniqueID varchar(100), FirstName varchar(100), LastName varchar(100), 
			Level int, 
            Game1_Score double,
			Game2_Score double,
            Game3_Score double,
            Game4_Score double,
            Game5_Score double,
            Game6_Score double,
            Game7_Score double,
            Game8_Score double,
            Game9_Score double,
            Game10_Score double);
create table Leaderboard_Positions(Ranking int,uniqueID varchar(100), FirstName varchar(100), 
		LastName varchar(100), Level int);