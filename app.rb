require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse 
  end 

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num ** 2 
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i 
    @saying = params[:phrase]
    "#{@saying}" * @num 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1+" "+@w2+" "+@w3+" "+@w4+" "+@w5}."
  end 

  get '/:operation/:number1/:number2' do 
    @operator = params[:operation]
    @n1 = params[:number1].to_i 
    @n2 = params[:number2].to_i 

    if @operator == "add"
      result = @n1 + @n2 
      result.to_s 
    elsif @operator == "subtract"
      result = @n1 - @n2 
      result.to_s
    elsif @operator == "multiply"
      result = @n1 * @n2
      result.to_s
    elsif 
      @operator == "divide"
      result = @n1 / @n2 
      result.to_s
    end 
  end 
end