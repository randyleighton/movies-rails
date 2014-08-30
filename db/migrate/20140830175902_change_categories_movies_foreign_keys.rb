class ChangeCategoriesMoviesForeignKeys < ActiveRecord::Migration
  def change
    rename_column :categories_movies, :categories_id, :category_id
    rename_column :categories_movies, :movies_id, :movie_id
    
  end
end
