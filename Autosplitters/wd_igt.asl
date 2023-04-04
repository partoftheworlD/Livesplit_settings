// F3 ?? ?? ?? ?? ?? ?? ?? 48 8B 97 ?? ?? ?? ?? 0F ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 74 ??
state("watch_dogs") {
	float game_time: "Disrupt_b64.dll", 0x3A9F940, 0x318;
}
init {
	vars.StartTime = 0;
}

update {
	if (vars.StartTime == 0) {
		vars.StartTime = current.game_time;
		return true;
	}
}

exit {
	timer.IsGameTimePaused = true;
}

gameTime {
	return TimeSpan.FromSeconds(current.game_time - vars.StartTime);
}

isLoading {
	return true;
}