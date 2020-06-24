require_relative 'config/environment'

class App < Sinatra::Base
 
 get "/reversename/:name" do
   @reverse_name = params[:name].reverse
   "#{@reverse_name}"
 end
 get "/square/:number" do
   @square_number = params[:number].to_i
   @square_number = @square_number * @square_number
   @square_number = @square_number.to_s
   "#{@square_number}"
 end
 get "/say/:number/:phrase" do
   @number = params[:number].to_i
   @phrase = params[:phrase]
   @array = []
   @number.times do @array << @phrase + ", "
 end
   @array = @array.join
   "#{@array}"
 end
 get "/say/:word1/:word2/:word3/:word4/:word5" do
  @array_new = ""
  @array_new = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " +params[:word5] +  "."
 "#{@array_new}"
 end
 get "/:operation/:number1/:number2" do
   @result = 0
   @n1 = params[:number1].to_i
   @n2 = params[:number2].to_i
   if params[:operation] == "add"
     @result = @n1 + @n2
   elsif params[:operation] == "subtract"
   @result = @n1 - @n2
    elsif params[:operation] == "multiply"
   @result = @n1 * @n2
    elsif params[:operation] == "divide"
   @result = @n1 / @n2
 end
 "#{@result.to_s}"
   end
 
 

end