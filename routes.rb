class Food < Sinatra::Base

  get '/' do
    erb :home
  end

  get "/meat/new" do
    erb :new
  end

  post "/apps" do
    Meat.create(title: params[:title], description: params[:description])
  redirect "/"
  end

  get "/apps" do
    @meats = Meat.all
    erb :meats
  end

  get "apps/:id/edit" do
    @meat = Meats.find(params[:id])
    erb :edit
  end

end
