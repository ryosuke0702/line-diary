class Diary < ApplicationRecord
    validates :place, :someone, :action, presence: true
    default_scope -> { order(created_at: :desc) }
    #belongs_to :user,optional: true 
    #validates :user_id, presence: true #ここの二行のコメントアウトを外すと投稿できなくなる
end
