-- Welcome message
print("Welcome to the Adventure Game!")

-- Ask the player if they want to play
io.write("Do you want to play? (yes/no): ")
local play = io.read():lower()

if play == "yes" then
    io.write("What is your name? ")
    local name = io.read()
    print("Hello, " .. name .. "! Let's start your adventure!")

    -- Start the adventure
    io.write(
    "You're on a dirt road, and it has come to an end. You can go left or right. Which way will you go? (left/right): ")
    local answer = io.read():lower()

    if answer == "left" then
        io.write(
        "You come to a lake. There is a boat and a path around the lake. Do you take the boat or walk around? (boat/walk): ")
        answer = io.read():lower()

        if answer == "boat" then
            print("You row across the lake but encounter a storm. The boat capsizes, and you drown. Game Over!")
        elseif answer == "walk" then
            io.write("You walk for a while and find a house. Do you enter the house or keep walking? (enter/walk): ")
            answer = io.read():lower()

            if answer == "enter" then
                print("You enter the house and find a treasure chest. You open it and find a golden coin! You win!")
            elseif answer == "walk" then
                print("You keep walking and find a monster. It eats you. Game Over!")
            else
                print("Invalid option. Game Over!")
            end
        else
            print("Invalid option. Game Over!")
        end
    elseif answer == "right" then
        io.write("You come to a bridge, but it looks weak. Do you cross the bridge or head back? (cross/back): ")
        answer = io.read():lower()

        if answer == "cross" then
            io.write(
            "You carefully cross the bridge and see a treasure chest. Do you open it or leave it? (open/leave): ")
            answer = io.read():lower()

            if answer == "open" then
                print("You open the chest. It's full of gold and jewels. You win!")
            elseif answer == "leave" then
                print(
                "You leave the treasure and walk away safely but miss out on riches. You survive, but no treasure for you. Game Over!")
            else
                print("Invalid option. Game Over!")
            end
        elseif answer == "back" then
            print("You turn back and run into a monster. It eats you. Game Over!")
        else
            print("Invalid option. Game Over!")
        end
    else
        print("Invalid option. Game Over!")
    end

    print("Thanks for playing, " .. name .. "!")
else
    print("Okay, goodbye!")
end
