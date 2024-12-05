# Makefile pour générer le fichier README.md

README.md: guessinggame.sh
	@echo "# Projet Guessing Game" > README.md
	@echo "Date d'exécution: $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
