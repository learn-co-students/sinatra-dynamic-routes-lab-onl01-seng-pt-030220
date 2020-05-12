require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    arr = []
    (1..params[:number].to_i).each { arr << params["phrase"]}
    arr
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation].to_s == "add"
      answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation].to_s == "subtract"
      answer = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation].to_s == "multiply"
      answer = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation].to_s == "divide"
      answer = params[:number1].to_i / params[:number2].to_i
    end
    "#{answer}"
  end

end
