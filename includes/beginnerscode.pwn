#include <a_samp>

forward KickTimer(playerid);

//Defines

#define END                                                                     ;

#define OR_IF 																	elseif

#define OTHERWISE                                                               else

#define YES                                                                     1

#define NO 																		0

#define PLAYER 																	playerid

#define EQUAL_TO 																==

#define GREATER_THAN 															>

#define LESS_THAN 																<

#define GREATER_OR_EQUAL 														>=

#define LESS_OR_EQUAL 															<=

#define ADD 																	+

#define SUBTRACT 																-

#define VARIABLE 																new

#define NULL 																	0

#define SET_VALUE_TO 															=

#define SET                                                                     enum

#define ARRAY_END                                                               };

#define PAWN_WHITE                                                              0xFFFFFF

#define HEX_WHITE                                                               {FFFFFF}

#define PAWN_BLACK                                                              0x000000

#define HEX_BLACK                                                               {000000}

#define LOG_CONSOLE                                                             print

//Functions

stock KillPlayer(playerid)
{
	SetPlayerHealth(playerid, 0);
	return 1;
}

stock SetMaxHealth(playerid)
{
	SetPlayerHealth(playerid, 100);
	return 1;
}

stock SetMaxArmour(playerid)
{
	SetPlayerArmour(playerid, 100);
	return 1;
}

stock PlayerName(playerid)
{
	new Name[30];
	GetPlayerName(playerid, Name, sizeof(Name));
	return Name;
}

stock PlayerHealth(playerid)
{
	new Float:HP;
	GetPlayerHealth(playerid, HP);
	return HP;
}

stock PlayerArmour(playerid)
{
	new Armour;
	GetPlayerArmour(playerid, Armour);
	return Armour;
}

stock PlayersInServer()
{
	new Players;
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			Players++;
		}
	}
	return Players;
}

stock RestartServer()
{
	SendRconCommand("gmx");
	return 1;
}

stock StopServer()
{
	SendRconCommand("exit");
	return 1;
}

stock KickPlayer(playerid)
{
	SetTimerEx("KickTimer", 1000, false, "i", playerid);
	return 1;
}
