require 'sinatra'
require 'sinatra/reloader'
require 'JSON'
require './choices'
configure do
  enable :sessions
end

get '/' do
  session[:unicorn_name] = Choices.unicorn_names.sample
  session[:unicorn_descriptor] = Choices.unicorn_descriptor.sample
  session[:type_of_unicorn] = Choices.type_of_unicorn.sample
  session[:angry_creature] = Choices.angry_creature.sample
  session[:creature_snack] = Choices.creature_snack.sample
  session[:unicorn_drink] = Choices.unicorn_drink.sample
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
