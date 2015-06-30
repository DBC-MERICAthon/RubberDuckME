get '/' do
	@topics = Topic.all
	erb :index
end

post '/topics' do
	p params[:topic_title]
	Topic.create(title: params[:topic_title])
	redirect '/'
end


get '/topics/:id' do
	@topic = Topic.find(params[:id])
	erb :show
end

