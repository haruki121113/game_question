class Question < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title,   presence: true
  validates :content, presence: true
  validates :genre_id, numericality: { other_than:1 , message: "can't be blank" }

  def self.search(search)
    if search != ""
      Question.where('title LIKE(?)', "%#{search}%").or(Question.where('content LIKE(?)', "%#{search}%"))
    else
      Question.all
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

end
