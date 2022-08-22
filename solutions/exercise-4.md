```bash
#!/bin/bash

# $((  )) is math context.
NUMBER=$(( ( RANDOM % 100 )  + 1 ))

NUM_MOVES=0
GUESS=0
echo "Please enter a number between 1 and 100"

until [[ "$GUESS" = "$NUMBER" ]]; do
    read -r -p "Number: " GUESS
    (( NUM_MOVES++ ))

    # We skip rest of the executing and continue with the next iteration
    if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
        echo "Please enter an integer"
        continue
    fi

    if [[ "$GUESS" -lt "$NUMBER" ]]; then
        echo "The number is too low"
    elif [[ "$GUESS" -gt "$NUMBER" ]]; then 
        echo "The number is too high"
    fi
done

echo "Wooho! You guessed it using $NUM_MOVES tries."
```