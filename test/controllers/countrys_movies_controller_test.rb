require 'test_helper'

class CountrysMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @countrys_movie = countrys_movies(:one)
  end

  test "should get index" do
    get countrys_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_countrys_movie_url
    assert_response :success
  end

  test "should create countrys_movie" do
    assert_difference('CountrysMovie.count') do
      post countrys_movies_url, params: { countrys_movie: {  } }
    end

    assert_redirected_to countrys_movie_url(CountrysMovie.last)
  end

  test "should show countrys_movie" do
    get countrys_movie_url(@countrys_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_countrys_movie_url(@countrys_movie)
    assert_response :success
  end

  test "should update countrys_movie" do
    patch countrys_movie_url(@countrys_movie), params: { countrys_movie: {  } }
    assert_redirected_to countrys_movie_url(@countrys_movie)
  end

  test "should destroy countrys_movie" do
    assert_difference('CountrysMovie.count', -1) do
      delete countrys_movie_url(@countrys_movie)
    end

    assert_redirected_to countrys_movies_url
  end
end
