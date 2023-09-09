state("AlanWake")
{
	int video : "alanwake.exe", 0x2BF934, 0x5c8;
}

split {
	if (old.video > current.video && current.video != 0) { return true; } 
}
