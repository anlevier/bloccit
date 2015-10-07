namespace :posts do
  task mark_spam: :environment do
  	posts = Post.all
  	posts.each_with_index do |post, index|
  		if index % 5 == 0
  			post.title = "SPAM"
  			post.save
  		end
		end
  end

end