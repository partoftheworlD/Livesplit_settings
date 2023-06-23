// 
state("WRC7") {
	float game_time: "WRC7.exe", 0x1091B88, 0xE0;
	byte end_race: "WRC7.exe", 0x1091B88, 0xC0;
}

init {
	vars.Total = 0;
}

update {
	if (current.game_time != 0) {
		vars.Total += (current.game_time - old.game_time);
	}
}

split {
	return current.end_race != old.end_race && current.end_race == 0;
}

exit {
	timer.IsGameTimePaused = true;
}

gameTime {
	return TimeSpan.FromSeconds(vars.Total);
}

isLoading {
	return true;
}