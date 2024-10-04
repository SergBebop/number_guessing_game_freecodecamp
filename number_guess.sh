#!/bin/bash

#Connect to database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#Initialize Variables
GUESSES=0
SECRET_NUMBER=$((RANDOM % 1000+1 ))

#USER LOG FUNCTION
LOGUSER(){
#Get Username
echo "Enter your username:"
read USERNAME
#Get user id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USERNAME'")
#User menu
#Condition: User not exist in the datebase?
if ! [[ "$USER_ID" ]]
then
  #Insert new user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
	INSERT_USERNAME=$($PSQL "INSERT INTO users(user_name) VALUES('$USERNAME')")
  #get id of the new user
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USERNAME'")
else
  #Get user data and scores
  SCORE=$($PSQL "SELECT COUNT(g.game_id) AS games_played, MIN(g.guesses) AS best_game FROM games g WHERE g.user_id = $USER_ID") 
  echo "$SCORE" | while IFS='|' read -r GAMES BESTSCORE
  do
    echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BESTSCORE guesses."
  done
fi
}

#NUMBER GUESS GAME FUNCTION
GAME(){
echo "Guess the secret number between 1 and 1000: "
while true
do
  read NUMBER_GUESS
  #Validate if data type input it's correct
  if [[ $NUMBER_GUESS =~ ^-?[0-9]+$ ]]
  then
    GUESSES=$((GUESSES + 1))
    #Ask if it's greater than secret number
    if [[ $NUMBER_GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    #If not, will ask if it's lower than that
    elif [[ $NUMBER_GUESS -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
    #if the result is false for both conditions, then it implies it's true, and will print the answer it's right 
      echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($GUESSES, $USER_ID)")
      break
    fi
  else
  #if the inpu it's not an integer, will end the condition and bucle start again
    echo "That is not an integer, guess again:"
  fi
done
}

LOGUSER
GAME