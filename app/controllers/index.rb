get '/' do
	redirect '/topics'
end

#Index

get '/topics' do
	@topics = Topic.all
	erb :topic
end

#New

get '/topics/new' do

	erb :topic_form
end

#Create

post '/topics' do

Topic.create(
	title: params[:title]
	)

redirect '/topics'
end

#Show

#Edit

#Update

#Delete
