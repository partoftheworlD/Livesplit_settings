
// 
state("dirt4") {
	float game_time: "dirt4.exe", 0x1D18864;
}

gameTime {
	return TimeSpan.FromSeconds(current.game_time);
}


isLoading {
	return true;
}