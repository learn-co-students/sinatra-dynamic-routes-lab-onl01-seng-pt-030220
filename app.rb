require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    erb :reversename
  end 

  get '/square/:number' do 
    erb :square
  end 

  get '/say/:number/:phrase' do
    erb :say_phrase
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :say_words 
  end 
  
  get '/:operation/:number1/:number2' do
    erb :operation 
  end 
  
end


# Create a dynamic route at get '/:operation/:number1/:number2' that 
# accepts an operation (add, subtract, multiply or divide) and 
# performs the operation on the two numbers provided, returning a String. 
# For example, going to /add/1/2 should render 3 as a String.