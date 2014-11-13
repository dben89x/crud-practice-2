class Update < ActiveRecord::Base

  validates :status, presence: true
  validates :user, presence: true
  validates :likes, presence: true

end
