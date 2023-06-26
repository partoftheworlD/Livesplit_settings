
// 
state("dirt4") {
	bool loading: "dirt4.exe", 0x149C7A0, 0x790;
}

isLoading {
	return current.loading;
}