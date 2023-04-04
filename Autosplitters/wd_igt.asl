// F3 ?? ?? ?? ?? ?? ?? ?? 48 8B 97 ?? ?? ?? ?? 0F ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 74 ??
state("watch_dogs") {
	float game_time: "Disrupt_b64.dll", 0x3A9F940, 0x318;
}

init {
	vars.StartTime = 0;
	vars.Delta = 0;
}

start {
	vars.StartTime = current.game_time;
	vars.Delta = 0;
}

update {
	if ((old.game_time - current.game_time) > 0) {
		vars.Delta += (old.game_time - current.game_time);
	}
}

exit {
	timer.IsGameTimePaused = true;
}

gameTime {
	return TimeSpan.FromSeconds(current.game_time - vars.StartTime + vars.Delta);
}

isLoading {
	return true;
}