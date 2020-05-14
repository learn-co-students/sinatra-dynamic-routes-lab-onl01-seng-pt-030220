require_relative 'config/environment'

class App < Sinatra::Base
	# Write your code here!
	get '/reversename/:name' do
		"#{params[:name].reverse}"
	end

	get '/square/:number' do
		"#{params[:number].to_i ** 2}"
	end

	get '/say/:number/:phrase' do
		"#{params[:phrase] * params[:number].to_i}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@words = ''
		[1..5][0].each do |word_number|
			@words = "#{@words} #{params["word#{word_number}".to_sym]}"
		end
		@words + '.'
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation]
		@number1 = params[:number1].to_f
		@number2 = params[:number2].to_f

		case @operation

		when 'add'
			"#{@number1 + @number2}"
		when 'subtract'
			"#{@number1 - @number2}"
		when 'multiply'
			"#{@number1 * @number2}"
		when 'divide'
			if @number2 != 0
				"#{@number1 / @number2}"
			else
				"Cannot Divide By Zero"
			end
		else
			"Not a valid operation"
		end
	end

end