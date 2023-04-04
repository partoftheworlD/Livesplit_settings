state("NZA2") {
    int isInGame      : 0x6D9EA8;
    int isGameStatus  : 0x6A3924;
    int isCutscene    : 0x698CDC;
    int isBlackScreen : 0x699324;
    float level_time: 0x71D7AC;
}

init {
    vars.total = 0;
}

start {
    vars.total = 0;
}

update {
    if (current.level_time < old.level_time) {
        vars.total += old.level_time;
        return true;
    }
}

isLoading {
    // return (current.isInGame != 0 || current.isGameStatus != 257 || current.isCutscene != 0 || current.isBlackScreen != 0);
    return true;
}

gameTime {
    return TimeSpan.FromSeconds(vars.total + current.level_time);
}
