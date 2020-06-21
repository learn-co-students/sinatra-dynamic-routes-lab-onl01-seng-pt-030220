require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    new_name = params[:name].reverse
  end

  get '/square/:number' do
    boop = params[:number].to_i
    blip = boop * boop
    blip.to_s
  end

  get '/say/:number/:phrase' do
    @phrase_repeated = ""
    params[:number].to_i.times {@phrase_repeated += params[:phrase] + " "}     
    @phrase_repeated
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params[:word1] + " " +  params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    oper = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    case oper
      when "multiply"
        "#{n1 * n2}"
      when "add"
        "#{n1 + n2}"
      when "subtract"
        "#{n1 - n2}"
      when "divide"
        "#{n1 / n2}"
      end
    end
end