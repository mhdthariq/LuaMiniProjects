-- Welcome message
print("Welcome to the Computer Quiz Game!")

-- Aks the user if they want to play the game
io.write("Are you ready to play the game? (yes/no): ")
local playing = io.read():lower()

if playing ~= "yes" then
    print("Goodbye!")
    os.exit()
end

print("Great! Let's get started!")

-- Questions and answers
local questions = {
    { questions = "What does CPU stand for?",  answers = "central processing unit" },
    { questions = "What does GPU stand for?",  answers = "graphics processing unit" },
    { questions = "What does RAM stand for?",  answers = "random access memory" },
    { questions = "What does PSU stand for?",  answers = "power supply unit" },
    { questions = "What does HDD stand for?",  answers = "hard disk drive" },
    { questions = "What does SSD stand for?",  answers = "solid state drive" },
    { questions = "What does BIOS stand for?", answers = "basic input/output system" },
    { questions = "What does USB stand for?",  answers = "universal serial bus" },
    { questions = "What does LAN stand for?",  answers = "local area network" },
    { questions = "What does WAN stand for?",  answers = "wide area network" }
}

-- Initialize the score
local score = 0

-- Ask each question
for _, qa in ipairs(questions) do
    io.write(qa.questions .. " ")
    local userAnswer = io.read():lower()

    if userAnswer == qa.answers then
        print("Correct!")
        score = score + 1
    else
        print("Incorrect! The correct answers is: " .. qa.answers)
    end
end

-- Calculate the final score
local totalQuestions = #questions
local percentage = (score / totalQuestions) * 100

-- Display the results
print("You got " .. score .. " out of " .. totalQuestions .. " correct!")
print(string.format("Your final score is %.2f%%.", percentage))
