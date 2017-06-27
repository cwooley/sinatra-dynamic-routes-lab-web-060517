require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string += @phrase
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params[:word1] + " " + params[:word2] +" "+ params[:word3] +" "+ params[:word4] +" "+ params[:word5] + "."
    @sentence
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = nil
    case @operation
    when "add"
      @result = @num1 + @num2
    when "subtract"
      @result = @num1 - @num2
    when "multiply"
      @result = @num1 * @num2
    when "divide"
      @result = @num1 / @num2
    end
    @result.to_s
  end


end
