class Blog < ActiveRecord::Base
  default_scope order("created_at DESC")
  scope :recent_blogs, -> { limit(5) }
end
