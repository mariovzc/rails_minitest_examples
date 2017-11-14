require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = articles(:one)
  end
  test "the truth" do
    assert true
  end

  test "article should have a title" do
    @article.title = nil
    assert_not @article.save
  end

  test "article should have a body" do
    @article.body = nil
    assert_not @article.save
  end

  test "article should have correct values" do
    assert @article.save
  end
  
  test "capitalize_title should return a Article with capitalized title" do
    @article.title = 'hola'
    @article.capitalize_title

    assert_equal 'Hola', @article.title
  end

end
