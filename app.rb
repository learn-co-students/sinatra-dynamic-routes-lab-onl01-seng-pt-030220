require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    result = ""
    @number = params[:number].to_i.times do |i|
      result += @phrase = params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @wd1 = params[:word1]
    @wd2 = params[:word2]
    @wd3 = params[:word3]
    @wd4 = params[:word4]
    @wd5 = params[:word5]
    "#{@wd1} #{@wd2} #{@wd3} #{@wd4} #{@wd5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @op
		when 'add'
			(@number1 + @number2).to_s
		when 'subtract'
			(@number1 - @number2).to_s
		when 'multiply'
			(@number1 * @number2).to_s
		when 'divide'
			(@number1 / @number2).to_s
		end
  end

end