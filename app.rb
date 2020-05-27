require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reverse_name = params[:name]
    @reverse_name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
  #   @num_str = params[:number]
  #   @phrase = params[:phrase]
    
  #   @num_i = @num_str.to_i
    
  #   @repeated_phrase = ""
  #   @num_i.times do  
  #     @repeated_phrase += @phrase
  #   end

  #  @repeated_phrase

    @repeated_phrase = ""
    params[:number].to_i.times {@repeated_phrase += params[:phrase] + " "}
     
    @repeated_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params[:word1] + " " +  params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5] + "."
  end
  
  get "/:operation/:number1/:number2" do
    @operation, @num1, @num2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    case @operation
      when "multiply"
        "#{@num1 * @num2}"
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num1 - @num2}"
      when "divide"
        "#{@num1 / @num2}"
    end
  end
  
end