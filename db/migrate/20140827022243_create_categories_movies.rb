class CreateCategoriesMovies < ActiveRecord::Migration
  def change
    create_table :categories_movies do |t|
      t.integer :categories_id
      t.integer :movies_id

      t.timestamps
    end
  end
end
