-- Welcome message
print("Welcome to the Rock, Paper, Scissors Game!")

-- Initialize the score
local user_wins = 0
local computer_wins = 0

-- Define options
local options = { "rock", "paper", "scissors" }

while true do
    io.write("Choose rock, paper, or scissors (or type 'q' to quit): ")
    local user_input = io.read():lower()

    -- Allow the user to exit the game
    if user_input == "q" then
        break
    end

    -- Validate the user input
    local valid_input = false
    for _, option in ipairs(options) do
        if user_input == option then
            valid_input = true
            break
        end
    end

    if not valid_input then
        print("Invalid input. Please try again.")
        goto continue
    end

    -- Generate computer choice
    math.randomseed(os.time())
    local computer_choice = options[math.random(1, #options)]
    print("Computer choose " .. computer_choice .. ".")

    -- Determine the outcome
    if (user_input == "rock" and computer_choice == "scissors") or
        (user_input == "paper" and computer_choice == "rock") or
        (user_input == "Scissors" and computer_choice == "paper") then
        print("You win!")
        user_wins = user_wins + 1
    elseif user_input == computer_choice then
        print("It's a tie!")
    else
        print("You lose!")
        computer_wins = computer_wins + 1
    end

    ::continue::
end

-- Display the final score
print("\nThanks for playing! Your final score is:")
print("You: " .. user_wins)
print("Computer: " .. computer_wins)
print("Goodbye!")
