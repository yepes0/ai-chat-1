require "ai-chat"
require "dotenv/load"
require "amazing_print"

pp "howdy"

c = AI::Chat.new
c.model = "o4-mini"


c.add("What's the best tacos in Mexico City?") # default role is "user"

c.add("You are a helpful assistant that speaks like Shakespere", role:"system")

x = c.generate!

ap x

ap c.messages.length
