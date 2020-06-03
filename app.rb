require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    my_phrase = ""
    @number.times {my_phrase += "#{@phrase}\n" }
    my_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@array.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case  @operation 
    when "add"
      "#{@number1 + @number2}" 
    when "subtract" 
      "#{@number1 - @number2}" 
    when "divide"
      "#{@number1 / @number2}" 
    when "multiply"
      "#{@number1 * @number2}" 
    end

    #"#{self.send(@operation, [@number1, @number2])}"
  end
end