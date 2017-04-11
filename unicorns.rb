puts "Hello! What's your name?"
name = gets.chomp

puts "#{name}, it's awesome to meet you!"

unicorn_name = [
  "Sparkles",
  "Glitterbomb",
  "Daisy",
  "Amethyst",
].sample

descriptor = [
  "most amazing",
  "super duper fucking awesome",
  "precocious",
].sample

type_of_unicorn = [
  "fluffy clydesdale-corn",
  "pink unicorn",
  "death metal unicorn of darkness",
].sample
puts "I'm #{unicorn_name}, the #{descriptor} #{type_of_unicorn}."

puts "#{name}, where would you like to go?\n
\t* A)The forest?\n
\t* B)The field of crystals?\n
\t* C)Seitanic Beach?"

while location_choice = gets.chomp.upcase do
  case location_choice
  when  "A"
    puts "Awesome, I love going to the forest."
    break
  when  "B"
    puts "Oh lovely, the Crystal Field is so so pretty."
    break
  when  "C"
    puts " Hell fucking yes! Hail Seitan! "
    break
  else
    puts "'Um #{name}, that's not an option. Please choose again'."
  end
end

angry_creature = [
  "tiger",
  "kitten",
  "snail",
  "sloth",
].sample
puts "Oh no, there is an angry #{angry_creature} blocking the path.\n
What shall we do? "
puts "\t*A) Give it scratches?\n
      \t*B) Give it food?\n
      \t* C) Run away? "
while angry_creature_solution = gets.chomp.upcase do
creature_snack = [
  "chocolate",
  "bibimbap",
  "ramen",
  "cake-e-o",
  "kale",
  "nooch nooch nooch",
  "crispy tofu",
].sample
 case angry_creature_solution

when "A"
  puts "Yes, everyone loves scratches. The #{angry_creature} is loving it."
break
when "B"
  puts "'Nom nom', said the #{angry_creature}, 'I love eating #{creature_snack}. Thank you #{name} and #{unicorn_name}'."
break
when "C"
  puts "'Scamper, scamper, scamper , scamper \n SCAMPER', shrieked #{unicorn_name} as they and #{name} ran away from the terrrifying #{angry_creature}. \n"
break
else
  puts "Oh #{name} sweetie, we have to do something effective.\n Please pick something that will work.'"
end
end
puts "After that adventure #{unicorn_name} and #{name} felt it was a good time to caffeinate."

feine_drink = [
  "mocha mochie mocha",
  "matchie matcha latte",
  "catspresso",
  "kitty latte",
  "long cat black",
  'glitter feine fuzzbucket',
].sample
puts "#{unicorn_name} decided to get a #{feine_drink}. 'What would you like #{name}?', asked #{unicorn_name}."

while drink_preference = gets.chomp do

puts "'Thanks #{unicorn_name}, I would love a #{drink_preference}'."

case drink_preference

when "coffee"
  puts "'Oh #{name}, you mean a catspresso?', #{unicorn_name} asked. \n"
break
when "matchie matcha latte"
  puts "'Oh yes #{name}, that is the best!'"
break
when "coke"
  puts "'Oh #{name}, that is like the worst drink ever', exclaimed #{unicorn_name}. \n"
  puts "'Choose something else #{name}.'\n"
          
    end
end
#else
  #puts "'Ok #{name}, they can probably make that for you', said #{unicorn_name}. \n"


buzzed = [
  "cat danced",
  "super scampered",
  "ran",
  "skipped",
].sample

destination = [
  "book-a-torium",
  "cat cave"
].sample
puts "Now that #{unicorn_name} and #{name} were buzzed as fuck on the feine they #{buzzed} all the way to the #{destination}."
