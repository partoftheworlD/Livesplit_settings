state("AlanWake")
{
	int video : "alanwake.exe", 0x2BF934, 0x5c8;
	bool isLoading : "alanwake.exe", 0x36AA34;
}

split {
	return (old.video < current.video && current.video != 0 && current.video != 9200 && current.video != 9700); 
}

isLoading {
	return current.isLoading;
}

exit {
	timer.IsGameTimePaused = true;
}