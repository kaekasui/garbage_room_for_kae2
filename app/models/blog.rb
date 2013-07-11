class Blog < ActiveRecord::Base
  default_scope order("created_at DESC")
  default_scope where(draft: false)
  scope :recent_blogs, -> { limit(5) }
end
