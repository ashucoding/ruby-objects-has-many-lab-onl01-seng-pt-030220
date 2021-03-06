class Author

  attr_accessor :name, :posts

  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self

  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
   
  end

  def self.post_count
    @@post_count
  end
  
  def self.post_count=(value)
    @@post_count = value
  end
end