class CountrysMoviesController < ApplicationController
  before_action :set_countrys_movie, only: [:show, :edit, :update, :destroy]

  # GET /countrys_movies
  # GET /countrys_movies.json
  def index
    @countrys_movies = CountrysMovie.all
  end

  # GET /countrys_movies/1
  # GET /countrys_movies/1.json
  def show
  end

  # GET /countrys_movies/new
  def new
    @countrys_movie = CountrysMovie.new
  end

  # GET /countrys_movies/1/edit
  def edit
  end

  # POST /countrys_movies
  # POST /countrys_movies.json
  def create
    @countrys_movie = CountrysMovie.new(countrys_movie_params)

    respond_to do |format|
      if @countrys_movie.save
        format.html { redirect_to @countrys_movie, notice: 'Countrys movie was successfully created.' }
        format.json { render :show, status: :created, location: @countrys_movie }
      else
        format.html { render :new }
        format.json { render json: @countrys_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countrys_movies/1
  # PATCH/PUT /countrys_movies/1.json
  def update
    respond_to do |format|
      if @countrys_movie.update(countrys_movie_params)
        format.html { redirect_to @countrys_movie, notice: 'Countrys movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @countrys_movie }
      else
        format.html { render :edit }
        format.json { render json: @countrys_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countrys_movies/1
  # DELETE /countrys_movies/1.json
  def destroy
    @countrys_movie.destroy
    respond_to do |format|
      format.html { redirect_to countrys_movies_url, notice: 'Countrys movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countrys_movie
      @countrys_movie = CountrysMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def countrys_movie_params
      params.fetch(:countrys_movie, {})
    end
end
