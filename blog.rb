# Create blog-like script.

def determine_current_date
	publish_date = Time.new.month.to_s + '/' + Time.new.day.to_s + '/' + Time.new.year.to_s
	
end

class Blog

	# class variable
	@@total_posts = 0

	@@array = Array.new
	@@hash  = Hash.new

	# class method
	def initialize
		@@total_posts += 1
		 
	end
	
	def add_blog(blog_author, blog_title, blog_content, blog_date)

		@@array << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n" + 
			   "Blog Author: "     + blog_author  +      "\n" +
                           "Blog Title:  "     + blog_title   +      "\n" +
                           "Blog Entry:  "     + blog_content +      "\n" +
                           "Published on: "    + blog_date    +      "\n"
	end

	# Keys have to be unique! Identify by post number.
	def add_hash(blog_author, blog_title, blog_content, blog_date)
		@@hash = @@hash.merge!(@@total_posts.to_s + " Blog Author" => blog_author, 
			       	       @@total_posts.to_s + " Blog Title" => blog_title, 
			   	       @@total_posts.to_s + " Blog Entry" => blog_content, 
				       @@total_posts.to_s + " Published on" => blog_date)
	end

	def self.current_count
		puts "There are currently #{@@total_posts} instances of my Blog class."
	end

	def self.publish 
		puts @@array 
		puts @@hash
	end
end


class Blogpost < Blog
# sets an author, title, and content for each new post

	def set_author
		@author = gets.chomp
	end

	def get_author
		return @author
	end

	def set_title
		@title = gets.chomp
	end
 
	def get_title
		return @title
	end

	def set_content
		@content = gets.chomp
	end

	def get_content
		return @content
	end
	
	# sets current date in MM/DD/YYYY format
	def date
		@publish_date = determine_current_date
	end

end

puts "Do you want to create a blog post? [Y/N]"
while (gets.downcase.chomp == 'y')
	my_blog = Blogpost.new

	# Author
	puts "Please enter your name."
	blog_author = my_blog.set_author

	# Blog title
	puts "Please enter your blog title."
	blog_title = my_blog.set_title

	# Blog Content
	puts "Please enter your blog entry."
	blog_content = my_blog.set_content
	my_blog.add_blog(my_blog.get_author.capitalize, 
	 	  	 my_blog.get_title.capitalize, 
			 my_blog.get_content.capitalize, 
			 my_blog.date)

	my_blog.add_hash(my_blog.get_author.capitalize,
			 my_blog.get_title.capitalize,
			 my_blog.get_content.capitalize, 
			 my_blog.date)


	puts "Do you want to create another blog post? [Y/N]"
end

Blogpost.publish

Blogpost.current_count
puts Blogpost.inspect
puts my_blog.inspect

