class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'エイム' },
    { id: 3, name: '立ち回り' },
    { id: 4, name: 'スキル、アルティメット' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :questions

end