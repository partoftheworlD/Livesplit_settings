state("NZA2") {
    int isInGame      : 0x6D9EA8;
    int isGameStatus  : 0x6A3924;
    int isCutscene    : 0x698CDC;
    int isBlackScreen : 0x699324;
}

isLoading {
    return (current.isInGame != 0 || current.isGameStatus != 257 || current.isCutscene != 0 || current.isBlackScreen != 0);
}