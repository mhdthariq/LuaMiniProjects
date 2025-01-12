-- Welcome message
print("Welcome to the Number Guessing Game!")

-- Get the upper range from the user
local top_of_range
while true do
    io.write("Type a number greater than 0 for the range: ")
    local input = io.read()
    top_of_range = tonumber(input)

    if top_of_range and top_of_range > 0 then
        top_of_range = math.floor(top_of_range)
        break
    else
        print("Invalid input. Please type a valid number greater than 0.")
    end
end

-- Generate a random number
math.randomseed(os.time())
local random_number = math.random(0, top_of_range)

local guess_count = 0

print("I've picked a number between 0 and " .. top_of_range .. ". Try to guess it!")

-- Start the guessing loop
while true do
    guess_count = guess_count + 1
    io.write("Your guess (or type 'exit' to quit): ")
    local user_input = io.read()

    -- Allow the user to exit the game
    if user_input:lower() == "exit" then
        print("Thanks for playing! The number was " .. random_number .. ".")
        break
    end

    -- Validate the user input
    local user_guess = tonumber(user_input)
    if not user_guess then
        print("Invalid input. Please type a valid number.")
        guess_count = guess_count - 1
        goto continue
    end

    -- Check the guess
    if user_guess == random_number then
        print("Congratulations! You guessed the number in " .. guess_count .. " attempts.")
        break
    elseif user_guess > random_number then
        print("Too high! Try again.")
    else
        print("Too low! Try again.")
    end

    ::continue::
end
