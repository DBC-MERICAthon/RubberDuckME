get '/' do
	"Hello World!"
end

#Index

get '/topics' do
	@topics = Topic.all
	erb :topics
end

#New

get '/topics/new' do

	erb :topic_form
end

#Create

post 'topics' do
	
@topics = Topic.create(
	topic: params[:topic]
	)

end

#Show

#Edit

#Update

#Delete