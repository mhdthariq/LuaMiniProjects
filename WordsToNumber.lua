-- Word-to-number mappings
local numbers = {
    one = 1,
    two = 2,
    three = 3,
    four = 4,
    five = 5,
    six = 6,
    seven = 7,
    eight = 8,
    nine = 9,
    ten = 10,
    eleven = 11,
    twelve = 12,
    thirteen = 13,
    fourteen = 14,
    fifteen = 15,
    sixteen = 16,
    seventeen = 17,
    eighteen = 18,
    nineteen = 19,
    twenty = 20,
    thirty = 30,
    forty = 40,
    fifty = 50,
    sixty = 60,
    seventy = 70,
    eighty = 80,
    ninety = 90,
    hundred = 100,
    thousand = 1000,
    million = 1000000
}

-- Function to parse words to number
local function parseWordsToNumber(input)
    local result = 0
    local current = 0

    for word in string.gmatch(input, "%S+") do
        word = string.lower(word)
        if numbers[word] then
            local value = numbers[word]
            if value == 100 then
                current = current * value
            elseif value >= 1000 then
                current = current * value
                result = result + current
                current = 0
            else
                current = current + value
            end
        else
            print("Unknown word: " .. word)
            return nil
        end
    end

    result = result + current
    return result
end

-- Function to format number with dots
local function formatWithDots(number)
    local numStr = tostring(number)
    local formatted = numStr:reverse():gsub("(%d%d%d)", "%1."):reverse()
    if formatted:sub(1, 1) == "." then
        formatted = formatted:sub(2)
    end
    return formatted
end

-- Main function
io.write("Enter a number in words: ")
local input = io.read("*l")

local number = parseWordsToNumber(input)
if number then
    local formatted = formatWithDots(number)
    print("Formatted Number: " .. formatted)
else
    print("Invalid input.")
end
