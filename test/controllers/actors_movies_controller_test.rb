require 'test_helper'

class ActorsMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actors_movie = actors_movies(:one)
  end

  test "should get index" do
    get actors_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_actors_movie_url
    assert_response :success
  end

  test "should create actors_movie" do
    assert_difference('ActorsMovie.count') do
      post actors_movies_url, params: { actors_movie: {  } }
    end

    assert_redirected_to actors_movie_url(ActorsMovie.last)
  end

  test "should show actors_movie" do
    get actors_movie_url(@actors_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_actors_movie_url(@actors_movie)
    assert_response :success
  end

  test "should update actors_movie" do
    patch actors_movie_url(@actors_movie), params: { actors_movie: {  } }
    assert_redirected_to actors_movie_url(@actors_movie)
  end

  test "should destroy actors_movie" do
    assert_difference('ActorsMovie.count', -1) do
      delete actors_movie_url(@actors_movie)
    end

    assert_redirected_to actors_movies_url
  end
end
