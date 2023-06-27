
// 
state("dirt4") {
	float game_time: "dirt4.exe", 0x1D18864;
}

init {
	vars.StartTime = 0;
}

start {
	vars.StartTime = current.game_time;
}

isLoading {
	return true;
}

gameTime {
	return TimeSpan.FromSeconds(current.game_time - vars.StartTime);
}


exit {
	timer.IsGameTimePaused = true;
}