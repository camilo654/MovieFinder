class ActorsMoviesController < ApplicationController
  before_action :set_actors_movie, only: [:show, :edit, :update, :destroy]

  # GET /actors_movies
  # GET /actors_movies.json
  def index
    @actors_movies = ActorsMovie.all
  end

  # GET /actors_movies/1
  # GET /actors_movies/1.json
  def show
  end

  # GET /actors_movies/new
  def new
    @actors_movie = ActorsMovie.new
  end

  # GET /actors_movies/1/edit
  def edit
  end

  # POST /actors_movies
  # POST /actors_movies.json
  def create
    @actors_movie = ActorsMovie.new(actors_movie_params)

    respond_to do |format|
      if @actors_movie.save
        format.html { redirect_to @actors_movie, notice: 'Actors movie was successfully created.' }
        format.json { render :show, status: :created, location: @actors_movie }
      else
        format.html { render :new }
        format.json { render json: @actors_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actors_movies/1
  # PATCH/PUT /actors_movies/1.json
  def update
    respond_to do |format|
      if @actors_movie.update(actors_movie_params)
        format.html { redirect_to @actors_movie, notice: 'Actors movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @actors_movie }
      else
        format.html { render :edit }
        format.json { render json: @actors_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors_movies/1
  # DELETE /actors_movies/1.json
  def destroy
    @actors_movie.destroy
    respond_to do |format|
      format.html { redirect_to actors_movies_url, notice: 'Actors movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actors_movie
      @actors_movie = ActorsMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actors_movie_params
      params.fetch(:actors_movie, {})
    end
end
