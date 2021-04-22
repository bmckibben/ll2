class AddCoverImageToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :cover_image, :string
  end
end
