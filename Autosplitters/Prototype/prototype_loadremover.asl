//50 E8 ? ? ? ? 8B 4F 10 8B 35 ? ? ? ? 6A 01 51 6A 00 6A 00 68 ? ? ? ?  8D 4C 24 24 E8 ? ? ? ? 50 8B CE E8 ? ? ? ?
state("prototypef") {
	int IGT: "prototypeenginef.dll", 0x12837EC, 0x18, 0x0, 0x0, 0x0, 0x4, 0xE08, 0x30, 0x4;
}

isLoading {
	return true;
}

gameTime {
        return TimeSpan.FromMilliseconds(current.IGT);
}