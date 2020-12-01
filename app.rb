require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    #accept name and render backwards
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do 
    #accept a numnber and returns its square
    number = params[:number].to_i
    square = number ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    #accept number and phrase and returns phrase in a single string, # of times
    @n = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}" * @n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    #accepts 5 words, returns sstring with all five
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
      if operation == "add"
        value = num1 + num2
        "#{value}"
      elsif operation == "multiply"
        value = num1 * num2
        "#{value}"
      elsif operation == "divide"
        value = num1/num2
        "#{value}"
      elsif operation == "subtract"
        value = num1-num2
        "#{value}"
      end
    #accepts operation, performs it and returns string
  end
end