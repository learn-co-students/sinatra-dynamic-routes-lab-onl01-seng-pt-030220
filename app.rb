require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    squared_number = (num ** 2).to_s
    "#{squared_number}"
  end

  # get '/say/:number/:phrase' do
  #   num = params[:number].to_i
  #   phrase = params[:phrase]
  #   num.times do
  #   "#{phrase}"
  #   end
  # end

   get '/say/:number/:phrase' do
   answer = ''

   params[:number].to_i.times do
     answer += params[:phrase]
   end

   answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1, word2, word3, word4, word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    operation, number1, number2 = params[:operation], params[:number1].to_i, params[:number2].to_i

    answer = 'Unable to perform this operation'

  case params[:operation]
  when 'add'
    answer = (number1 + number2).to_s
  when 'subtract'
    answer = (number1 - number2).to_s
  when 'multiply'
    answer = (number1 * number2).to_s
  when 'divide'
    answer = (number1 / number2).to_s
  end
end



end
