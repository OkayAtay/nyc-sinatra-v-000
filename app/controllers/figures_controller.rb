class FiguresController < ApplicationController
<<<<<<< HEAD

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by_id(params[:id])
    erb :'/figures/edit'
  end

  post '/figures' do
    @figure = Figure.create(name: params["figure"]["name"])
    @figure.title_ids = params["figure"]["title_ids"]
    @figure.landmark_ids = params["figure"]["landmark_ids"]
    if params["title"]["name"] != ""
      @figure.titles << Title.create(name: params["title"]["name"])
    elsif params["landmark"]["name"] != ""
      @figure.landmarks << Landmark.create(name: params["landmark"]["name"])
    end
    @figure.save
    redirect("/figures/#{@figure.id}")
  end
=======
>>>>>>> 21f51051223ed7f7d5e11903c06939d19d18188f

  get '/figures/new' do
    erb :'/figures/new'
  end
end
