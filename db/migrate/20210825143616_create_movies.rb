class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.text :summary
      t.string :director
      t.string :length
      t.string :genre
      t.string :year

      t.timestamps
    end
  end
end
