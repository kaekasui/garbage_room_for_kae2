class BlogComment < ActiveRecord::Base

  belongs_to :blog

  default_scope { order("created_at DESC") }
  default_scope { where(draft: false) }

  before_save :set_hostname

  validates_presence_of :content
  #validates_format_of :url, with: /^(https?)(:\/\/[-_.!~*\'()a-zA-Z0-9;\/?:\@&=+\$,%#]+)$/

  private
  def set_hostname
    self.host = hostname(self.ip)
  end

  def hostname(ip)
     hostname = Socket.getnameinfo([nil, nil, nil, ip])
     hostname[0]
  end
end
