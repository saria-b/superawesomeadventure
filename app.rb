require 'sinatra'
require 'sinatra/reloader'
require 'JSON'

configure do
  enable :sessions
end

get '/' do
  unicorn_name = [
      "Sparkles",
      "Glitterbomb",
      "Daisy",
      "Amethyst",
  ].sample
  session[:unicorn_name] = unicorn_name

  descriptor = [
      "most amazing",
      "super duper fucking awesome",
      "precocious",
  ].sample
  session[:unicorn_descriptor] = descriptor

  type_of_unicorn = [
      "fluffy clydesdale-corn",
      "pink unicorn",
      "death metal unicorn of darkness",
  ].sample
  session[:type_of_unicorn] = type_of_unicorn
  angry_creature = [
      "tiger",
      "kitten",
      "snail",
      "sloth",
  ].sample
  session[:angry_creature] = angry_creature
  creature_snack = [
      "chocolate",
      "bibimbap",
      "ramen",
      "cake-e-o",
      "kale",
      "nooch nooch nooch",
      "crispy tofu",
  ].sample
  session[:creature_snack] = creature_snack
  unicorn_drink = [
      "mocha mochie mocha",
      "matchie matcha latte",
      "catspresso",
      "kitty latte",
      "long cat black",
      'glitter feine fuzzbucket',
  ].sample
  session[:unicorn_drink] = unicorn_drink
  erb :default


end

post '/setUserName' do
  session[:userName] = params['userName']
  redirect to('/introduction')
end

get '/introduction' do


  erb :adventure, :locals => {:userName => session[:userName],
                              :unicornName => session[:unicorn_name],
                              :descriptor => session[:unicorn_descriptor],
                              :typeOfUnicorn => session[:type_of_unicorn],
                              :angryCreature => session[:angry_creature],
                              :creatureSnack => session[:creature_snack]}

end


get '/angry' do
  erb :angry, :locals => {:userName => session[:userName],
                         :unicornName => session[:unicorn_name],
                         :descriptor => session[:unicorn_descriptor],
                         :typeOfUnicorn => session[:type_of_unicorn],
                         :angryCreature => session[:angry_creature],
                         :creatureSnack => session[:creature_snack]}
end

get '/caffeine' do
  erb :caffeine, :locals => {:userName => session[:userName],
                              :unicornName => session[:unicorn_name],
                              :descriptor => session[:unicorn_descriptor],
                              :typeOfUnicorn => session[:type_of_unicorn],
                              :angryCreature => session[:angry_creature],
                              :creatureSnack => session[:creature_snack],
                              :unicornDrink => session[:unicorn_drink]}

end