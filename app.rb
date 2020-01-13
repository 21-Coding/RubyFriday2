require('sinatra')
require('sinatra/reloader')
require('.lib/album')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
   @words = Word.all
   erb(:words)
end

get('/words') do

end

get('/words/new') do
  erb(:new_word)
end

post('/words') do
  word_name = params[:word_name]
  word = Word.new(name, nil)
  word.save()
  @words = Word.all()
  erb(:words)
end
