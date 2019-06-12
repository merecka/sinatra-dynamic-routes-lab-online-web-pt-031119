require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_backwards = params[:name].reverse
    "#{@name_backwards}"
  end

  get '/square/:number' do
    @num_squared = params[:number].to_i * params[:number].to_i
    "#{@num_squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      "#{@number1+@number2}"
    elsif @operation == "subtract"
      "#{@number1-@number2}"
    elsif @operation == "multiply"
      "#{@number1*@number2}"
    elsif @operation == "divide"
      "#{@number1/@number2}"
    end
  end

end
