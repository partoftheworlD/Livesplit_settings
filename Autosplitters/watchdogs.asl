state("watch_dogs")
{ 
	int isinGame : "Disrupt_b64.dll", 0x3B33FE0;
	int gamestate : "Disrupt_b64.dll", 0x34F3554;
}

isLoading {
	return current.isinGame == 0 || current.gamestate != 4;
}