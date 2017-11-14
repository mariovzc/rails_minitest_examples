require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "article should have a title" do
    @article = Article.new
    assert_not @article.save
  end
  
  test "capitalize_title should return a Article with capitalized title" do
    @article = Article.new(title: 'hola')
    @article.capitalize_title

    assert_equal 'Hola', @article.title
  end

end
