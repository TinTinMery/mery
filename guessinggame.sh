#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
guess_the_number() {
    local correct_guess=$(ls -1 | wc -l)  # Nombre de fichiers dans le répertoire actuel
    local user_guess=-1  # Initialisation de la variable de la réponse utilisateur

    # Boucle tant que l'utilisateur n'a pas trouvé la bonne réponse
    while [[ $user_guess -ne $correct_guess ]]; do
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read user_guess  # Demander à l'utilisateur de faire une estimation

        if [[ $user_guess -lt $correct_guess ]]; then
            echo "C'est trop bas. Essayez encore."
        elif [[ $user_guess -gt $correct_guess ]]; then
            echo "C'est trop haut. Essayez encore."
        fi
    done

    echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers : $correct_guess."
}

# Appeler la fonction
guess_the_number
