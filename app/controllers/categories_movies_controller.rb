class CategoriesMoviesController < ApplicationController
  before_action :set_categories_movie, only: [:show, :edit, :update, :destroy]

  # GET /categories_movies
  # GET /categories_movies.json
  def index
    @categories_movies = CategoriesMovie.all
  end

  # GET /categories_movies/1
  # GET /categories_movies/1.json
  def show
  end

  # GET /categories_movies/new
  def new
    @categories_movie = CategoriesMovie.new
  end

  # GET /categories_movies/1/edit
  def edit
  end

  # POST /categories_movies
  # POST /categories_movies.json
  def create
    @categories_movie = CategoriesMovie.new(categories_movie_params)

    respond_to do |format|
      if @categories_movie.save
        format.html { redirect_to @categories_movie, notice: 'Categories movie was successfully created.' }
        format.json { render :show, status: :created, location: @categories_movie }
      else
        format.html { render :new }
        format.json { render json: @categories_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_movies/1
  # PATCH/PUT /categories_movies/1.json
  def update
    respond_to do |format|
      if @categories_movie.update(categories_movie_params)
        format.html { redirect_to @categories_movie, notice: 'Categories movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @categories_movie }
      else
        format.html { render :edit }
        format.json { render json: @categories_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_movies/1
  # DELETE /categories_movies/1.json
  def destroy
    @categories_movie.destroy
    respond_to do |format|
      format.html { redirect_to categories_movies_url, notice: 'Categories movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_movie
      @categories_movie = CategoriesMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categories_movie_params
      params.fetch(:categories_movie, {})
    end
end
