require "./config/environment"

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/hello" do
    erb :hello
  end

  get "/goodbye" do
    @user = Goodbye.new("Joe")
    erb :goodbye
  end

  get "/date" do
    @date = Date.today.strftime("%A, %B %d, %Y")
    erb :date
  end
end
