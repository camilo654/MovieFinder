class LanguagesMoviesController < ApplicationController
  before_action :set_languages_movie, only: [:show, :edit, :update, :destroy]

  # GET /languages_movies
  # GET /languages_movies.json
  def index
    @languages_movies = LanguagesMovie.all
  end

  # GET /languages_movies/1
  # GET /languages_movies/1.json
  def show
  end

  # GET /languages_movies/new
  def new
    @languages_movie = LanguagesMovie.new
  end

  # GET /languages_movies/1/edit
  def edit
  end

  # POST /languages_movies
  # POST /languages_movies.json
  def create
    @languages_movie = LanguagesMovie.new(languages_movie_params)

    respond_to do |format|
      if @languages_movie.save
        format.html { redirect_to @languages_movie, notice: 'Languages movie was successfully created.' }
        format.json { render :show, status: :created, location: @languages_movie }
      else
        format.html { render :new }
        format.json { render json: @languages_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /languages_movies/1
  # PATCH/PUT /languages_movies/1.json
  def update
    respond_to do |format|
      if @languages_movie.update(languages_movie_params)
        format.html { redirect_to @languages_movie, notice: 'Languages movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @languages_movie }
      else
        format.html { render :edit }
        format.json { render json: @languages_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languages_movies/1
  # DELETE /languages_movies/1.json
  def destroy
    @languages_movie.destroy
    respond_to do |format|
      format.html { redirect_to languages_movies_url, notice: 'Languages movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_languages_movie
      @languages_movie = LanguagesMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def languages_movie_params
      params.fetch(:languages_movie, {})
    end
end
