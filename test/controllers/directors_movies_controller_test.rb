require 'test_helper'

class DirectorsMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @directors_movie = directors_movies(:one)
  end

  test "should get index" do
    get directors_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_directors_movie_url
    assert_response :success
  end

  test "should create directors_movie" do
    assert_difference('DirectorsMovie.count') do
      post directors_movies_url, params: { directors_movie: {  } }
    end

    assert_redirected_to directors_movie_url(DirectorsMovie.last)
  end

  test "should show directors_movie" do
    get directors_movie_url(@directors_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_directors_movie_url(@directors_movie)
    assert_response :success
  end

  test "should update directors_movie" do
    patch directors_movie_url(@directors_movie), params: { directors_movie: {  } }
    assert_redirected_to directors_movie_url(@directors_movie)
  end

  test "should destroy directors_movie" do
    assert_difference('DirectorsMovie.count', -1) do
      delete directors_movie_url(@directors_movie)
    end

    assert_redirected_to directors_movies_url
  end
end
