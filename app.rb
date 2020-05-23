require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  name = params[:name]
  @new_name = name.reverse
  "#{@new_name}"
  end

  get '/square/:number' do
  a = params[:number]
  b = (a.to_i) * (a.to_i)
  "#{b.to_s}"
  end

get '/say/:number/:phrase' do
  phrase = params[:phrase]
  number = params[:number]
  array = []
  number.to_i.times do
  array << phrase
  end
  array.join(" ")
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
string = params.values.join(" ")
array = string.split(" ")
array[-1] = array[-1]+"."
joined = array.join (" ")
joined
end

get '/:operation/:number1/:number2' do
n1 = params[:number1].to_i
n2 = params[:number2].to_i
result = nil
if params[:operation] == "add"
  result = n1 + n2
elsif params[:operation] == "subtract"
  result = n1 - n2
elsif params[:operation] == "multiply"
  result = n1 * n2
elsif params[:operation] == "divide"
  result = n1 / n2
end
result.to_s
# binding.pry
end




end
