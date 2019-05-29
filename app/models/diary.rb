class Diary < ApplicationRecord
    validates :place, :someone, :action, presence: true
   # default_scope -> { order(created_at: :desc) }
    belongs_to :user
    validates :user_id, presence: true
end
