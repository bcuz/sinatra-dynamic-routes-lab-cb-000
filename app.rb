require_relative 'config/environment'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end
  get "/square/:number" do
    @user_name = params[:number].to_i
    "#{@user_name ** 2}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    # if statement
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == 'add'
      "#{@number1 + @number2}"
    elsif @operation == 'subtract'
      
    end
  end
end
