class Blog < ActiveRecord::Base
  scope :recent_blogs, -> { limit(5) }
end
