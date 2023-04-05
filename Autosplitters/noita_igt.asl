// 8B CF E8 ?? ?? ?? ?? F2 ?? ?? ?? ?? 5F 5E
state("noita") {
	double game_time: 0xBF9860;
}

isLoading {
	return true;
}

gameTime {
	return TimeSpan.FromSeconds(current.game_time);
}

