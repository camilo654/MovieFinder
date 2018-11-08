require 'test_helper'

class CategoriesMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_movie = categories_movies(:one)
  end

  test "should get index" do
    get categories_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_movie_url
    assert_response :success
  end

  test "should create categories_movie" do
    assert_difference('CategoriesMovie.count') do
      post categories_movies_url, params: { categories_movie: {  } }
    end

    assert_redirected_to categories_movie_url(CategoriesMovie.last)
  end

  test "should show categories_movie" do
    get categories_movie_url(@categories_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_movie_url(@categories_movie)
    assert_response :success
  end

  test "should update categories_movie" do
    patch categories_movie_url(@categories_movie), params: { categories_movie: {  } }
    assert_redirected_to categories_movie_url(@categories_movie)
  end

  test "should destroy categories_movie" do
    assert_difference('CategoriesMovie.count', -1) do
      delete categories_movie_url(@categories_movie)
    end

    assert_redirected_to categories_movies_url
  end
end
