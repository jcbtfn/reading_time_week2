# {{PROBLEM}} Method Design Recipe
# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, 
# assuming that I can read 200 words a minute.

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

# def method read_time
# takes parameter "text", string containing words/text
# it should return the average time in minutes it will take to read a text with
# an average speed of 200 words/minute

# # EXAMPLE

# test the function with less than 200 words
# test the function with 200 words 
# test the function with more than 200 words

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

# # EXAMPLE

# read_time("text with fewer than 200 words") => 0 minutes
# read_time("text with 200 words") => 1 minute
# read_time("text with 400 words") => 2 minutes

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of 
#red, green, refactor to implement the behaviour.

def read_time(string)
    puts "Reading time is approximately " + ((string.split.length) / 200.0).round.to_s + " minute(s)"
    return ((string.split.length) / 200.0).round
end