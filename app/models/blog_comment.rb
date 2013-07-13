class BlogComment < ActiveRecord::Base

  belongs_to :blog

  default_scope { order("created_at DESC") }
  default_scope { where(draft: false) }
  scope :recent_blog_comments, -> { limit(5) }

  before_save :set_hostname

  validates_presence_of :content
  #validates_format_of :url, with: /^(https?)(:\/\/[-_.!~*\'()a-zA-Z0-9;\/?:\@&=+\$,%#]+)$/

  def blog_title
    Blog.find(self.blog_id).title
  end

  private
  def set_hostname
    self.host = hostname(self.ip)
  end

  def hostname(ip)
     hostname = Socket.getnameinfo([nil, nil, nil, ip])
     hostname[0]
  end
end
