get '/' do
	@topics = Topic.all
	erb :index
end

post '/topics' do
	puts "*" *100
	Topic.create(title: params[:topic_title])
	redirect '/'
end


get '/topics/:id' do
	@topic = Topic.find(params[:id])
	erb :show
end

post '/topics/:id/comments' do
	p params[:id]
	p params[:content]
	@topic = Topic.find(params[:id])
	@topic.comments << Comment.create(content: params[:content])
	redirect "/topics/#{@topic.id}"
end


