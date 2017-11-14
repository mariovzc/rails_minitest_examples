class Article < ApplicationRecord
  validates :title, presence: true

  def capitalize_title
    self.title = self.title.capitalize!
  end
end
