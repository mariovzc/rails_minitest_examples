class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  
  def capitalize_title
    self.title = self.title.capitalize!
  end
end
