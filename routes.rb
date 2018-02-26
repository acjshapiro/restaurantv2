class Meat < Sinatra::Base

  get '/' do
    erb :home
  end

  get "/new" do
    erb :new
  end

  post "/meats" do
    Meats.create(name: params[:name], description: params[:description])
    redirect "/meats"
  end

  get "/meats" do
    @meats = Meats.all
    erb :meats
  end

  get "/meats/:id/edit" do
    @meats = Meats.find(params[:id])
    erb :edit
  end

  put "/meats/:id" do
    meat = Meats.find(params[:id])
    meat.update(name: params[:name], description: params[:description])
    redirect "/meats"
  end

  delete "/meats/:id" do
    Meats.find(params[:id]).destroy
    redirect "/meats"
  end

end
