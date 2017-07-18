class AddSlugsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :id_slug, :string
    add_column :posts, :title_slug, :string
  end
end
