class Question < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title,   presence: true
  validates :content, presence: true

  def self.search(search)
    if search != ""
      Question.where('title LIKE(?)', "%#{search}%").or(Question.where('content LIKE(?)', "%#{search}%"))
    else
      Question.all
    end
  end
end
