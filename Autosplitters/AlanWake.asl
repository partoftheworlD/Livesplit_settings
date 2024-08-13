state("AlanWake")
{
	int video : "alanwake.exe", 0x2BF934, 0x5c8;
	bool isLoading : "alanwake.exe", 0x36AA34;
	float timer: "alanwake.exe", 0x2e6ca4, 0x44;
}

split {
	return (old.video < current.video && current.video != 0 && current.video != 9200 && current.video != 9700); 
}

gameTime {
	return TimeSpan.FromSeconds(current.timer);
}

isLoading {
	return true;
}

exit {
	timer.IsGameTimePaused = true;
}