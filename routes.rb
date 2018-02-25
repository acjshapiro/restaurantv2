class Food < Sinatra::base

  get '/' do
    erb :home
  end

  get "/meat/new" do
    erb :new
  end

end
