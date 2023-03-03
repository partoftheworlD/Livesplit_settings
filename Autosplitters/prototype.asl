state("prototypef") {
    int Time:"prototypeenginef.dll", 0x1316208, 0x0, 0x3C, 0x54, 0x30, 0x10, 0x0, 0x0, 0x18, 0x30, 0x4;
}

init {
	vars.time = 0;
}

start {
	vars.time = current.Time;
}

gameTime {
        return TimeSpan.FromMilliseconds(current.Time - vars.time);
}