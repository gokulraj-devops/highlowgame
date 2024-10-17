#!/bin/bash

#high low game 
arr=(1 2 3 4 5)


echo -e "\n------------------------------Welcome to HIGH LOW GAME--------------------------\n"
echo -e "********************************************************************************\n"
read -p "$(echo -e "\t\t") Do you want to the game [Yes/No]: " option
echo -e "\n********************************************************************************\n"
while [ $option == "yes" ]
do
    rand=$[ $RANDOM % 5 ]
    bot_option=${arr[$rand]}
    attempts=0
    num_find=false
while [ $num_find == false  ]
do
    read -p "$(echo -e "\t\t") Choose your option [1,2,3,4,5]: " user_option
    ((attempts++))

    if [ $user_option -gt $bot_option ]
    then
        echo -e "\n\t\t  ---------------------------------------"
        echo -e "\t\t  | It's high!, bot is choose low value |"
        echo -e "\t\t  ---------------------------------------\n"
    elif [ $user_option -lt $bot_option ]
    then
        echo -e "\n\t\t  ---------------------------------------"
        echo -e "\t\t  |  It's low!, bot is choose high value |"
        echo -e "\t\t  ----------------------------------------\n"
    else 
        echo -e "\n\t ------------------------------------------------------"
        echo -e "\t | Congratulations!, bot is choose $bot_option and you choose $user_option |"
        echo -e "\t |\t\tYou have totally $attempts attempts           |"
        echo -e "\t ------------------------------------------------------\n"
        break
    fi
            
  done 
    echo -e "\n********************************************************************************"
    read -p "$(echo -e "\t\t")Do you want to the game again [yes/no]: " option
    echo -e "********************************************************************************\n"
    if [[ $option != "yes" ]]
    then
        echo -e "-------------------------Thank you for playing! Goodbye!------------------------\n"
        echo -e "-------------------------Have a nice day! see you again!------------------------\n"
        break
    fi
done