state("SniperGhostWarrior2") {
	bool inGame: 0x177E460;
	// bool inGame: 0x177E474;
	// bool inGame: 0x177E47C;
	// bool inGame: 0x177E49C;
	// float fGameTime: 0x15E9FD0;

}

isLoading {

	return !current.inGame;
}