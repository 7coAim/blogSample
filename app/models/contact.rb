class Contact < ApplicationRecord
    
    #名前
    validates :name, presence: true
    
    #メールアドレス
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    
    #内容
    validates :content, presence: true, length: { in: 1..140 }   

end
