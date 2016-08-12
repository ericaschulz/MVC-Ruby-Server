class NotesController < HomeController
  get '/' do
    #binding.pry
    Note.all.to_json
  end

  get '/:id' do
    Note.find(params[:id]).to_json
  end

  post '/' do
    Note.create(:message => params[:message], :author => params[:author]).to_json
  end

  patch '/:id' do
    @note = Note.find(params[:id])
    @note.message = params[:message]
    @note.author = params[:author]
    @note.save
  end

  delete '/:id' do
    #delete by id
    Note.find(params[:id]).destroy.to_json
  end

end
