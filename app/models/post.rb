class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true

  after_initialize { self.posted_at ||= Time.current }
end
