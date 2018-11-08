require 'test_helper'

class LanguagesMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @languages_movie = languages_movies(:one)
  end

  test "should get index" do
    get languages_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_languages_movie_url
    assert_response :success
  end

  test "should create languages_movie" do
    assert_difference('LanguagesMovie.count') do
      post languages_movies_url, params: { languages_movie: {  } }
    end

    assert_redirected_to languages_movie_url(LanguagesMovie.last)
  end

  test "should show languages_movie" do
    get languages_movie_url(@languages_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_languages_movie_url(@languages_movie)
    assert_response :success
  end

  test "should update languages_movie" do
    patch languages_movie_url(@languages_movie), params: { languages_movie: {  } }
    assert_redirected_to languages_movie_url(@languages_movie)
  end

  test "should destroy languages_movie" do
    assert_difference('LanguagesMovie.count', -1) do
      delete languages_movie_url(@languages_movie)
    end

    assert_redirected_to languages_movies_url
  end
end
