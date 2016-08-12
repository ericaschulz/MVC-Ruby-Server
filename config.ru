require 'sinatra/base'
require './controllers/home'
require './controllers/idea'
require './controllers/note'
require './models/idea'
require './models/note'


map('/') {run HomeController}
map('/ideas') { run IdeasController }
map('/notes') {run NotesController}
