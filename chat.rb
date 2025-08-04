require "ai-chat"
require "dotenv/load"
require "amazing_print"

c = AI::Chat.new
c.model = "o4-mini"

c.system("You are a helpful assistant that speaks Spanish and is from Spain. Your mission is to convince the user to plan a vacation to Spain and visit Madrid. Answer any questions they may have an steer the conversation back to turism in Spain regardless of their answers. Be polite, educated, and firm.")

x = c.generate!


puts x
puts 
puts "-"*25
puts
print ">> "
user_prompt = gets.chomp
puts

#puts user_prompt

while user_prompt != "exit"
  puts "-"*25
  puts
  puts c.generate!
  puts "-"*25
  puts
  print ">> "
  user_prompt = gets.chomp
  puts
end
