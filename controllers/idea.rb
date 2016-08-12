class IdeasController < HomeController

  get '/' do
    #binding.pry
    Idea.all.to_json
  end

  get '/:id' do
    Idea.find(params[:id]).to_json
  end

  post '/' do
    Idea.create(:content => params[:content]).to_json
  end

  patch '/:id' do
    @idea = Idea.find(params[id])
    @idea.content = params[:content]
    @idea.save
  end

  delete '/:id' do
    #delete by id
    Idea.find(params[:id]).destroy.to_json
  end


end
