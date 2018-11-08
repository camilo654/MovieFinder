class DirectorsMoviesController < ApplicationController
  before_action :set_directors_movie, only: [:show, :edit, :update, :destroy]

  # GET /directors_movies
  # GET /directors_movies.json
  def index
    @directors_movies = DirectorsMovie.all
  end

  # GET /directors_movies/1
  # GET /directors_movies/1.json
  def show
  end

  # GET /directors_movies/new
  def new
    @directors_movie = DirectorsMovie.new
  end

  # GET /directors_movies/1/edit
  def edit
  end

  # POST /directors_movies
  # POST /directors_movies.json
  def create
    @directors_movie = DirectorsMovie.new(directors_movie_params)

    respond_to do |format|
      if @directors_movie.save
        format.html { redirect_to @directors_movie, notice: 'Directors movie was successfully created.' }
        format.json { render :show, status: :created, location: @directors_movie }
      else
        format.html { render :new }
        format.json { render json: @directors_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directors_movies/1
  # PATCH/PUT /directors_movies/1.json
  def update
    respond_to do |format|
      if @directors_movie.update(directors_movie_params)
        format.html { redirect_to @directors_movie, notice: 'Directors movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @directors_movie }
      else
        format.html { render :edit }
        format.json { render json: @directors_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directors_movies/1
  # DELETE /directors_movies/1.json
  def destroy
    @directors_movie.destroy
    respond_to do |format|
      format.html { redirect_to directors_movies_url, notice: 'Directors movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directors_movie
      @directors_movie = DirectorsMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directors_movie_params
      params.fetch(:directors_movie, {})
    end
end
