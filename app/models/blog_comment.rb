class BlogComment < ActiveRecord::Base

  belongs_to :blog
  before_save :set_hostname

  private
  def set_hostname
    self.host = hostname(self.ip)
  end

  def hostname(ip)
     hostname = Socket.getnameinfo([nil, nil, nil, ip])
     hostname[0]
  end
end
