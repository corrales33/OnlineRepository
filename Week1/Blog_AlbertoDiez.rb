class Post
	attr_accessor :title, :date, :body, :sponsored
	def initialize title, date, body, sponsored = false 
		@title = title
		@date = date
		@body = body
		@sponsored = sponsored
	end
end
class Blog
	attr_accessor :posts
	def initialize 
		@posts = []
	end

	def add_post post
		@posts.push(post)
	end

	def create_front_page
		front_page = ""

		sort_posts

		@posts.each {|post|
			front_page << add_post_title(post)
			front_page << decorate_post_head
			front_page << post.body
			front_page << decorate_post_body}

		front_page
	end

	def sort_posts
		@posts.sort!{|a,b| a.date <=> b.date}
	end

	def publish_front_page 
		system("clear")
		puts create_front_page
	end

	def add_post_title post
		if is_sponsored_post? post
			return decorate_post_title post
		else
			return post.title
		end
	end

	def is_sponsored_post? post
		post.sponsored
	end

	def decorate_post_head
		"\n******************\n"
	end

	def decorate_post_body
		"\n------------------\n\n"
	end

	def decorate_post_title post
		"******** #{post.title} ********"
	end
end

blog = Blog.new

post1 = Post.new("¡Mi primer post!", Time.now, "Espero cumplir con las expectativas :)",)
post2 = Post.new("¡¡Bienvenidos!!", Time.now, "¿Qué tal estáis?", true)
post3 = Post.new("Hasta la próxima", Time.now, "No se os olvide dejar una visita :P")

blog.add_post post1
blog.add_post post2
blog.add_post post3

blog.publish_front_page