state("AlanWake")
{
	int video : "alanwake.exe", 0x2BF934, 0x5c8;
}

start {
	return current.video == 9100;
}

split {
	return (old.video < current.video && current.video != 0); 
}
