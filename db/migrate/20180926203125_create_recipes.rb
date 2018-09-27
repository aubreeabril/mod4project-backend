class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
        t.string :title
        t.string :image
        t.string :source
        t.string :src_url
        t.text :ingredient_lines, array:true, default: []
        t.text :health_labels, array:true, default: []
        t.integer :yield
      t.timestamps
    end
  end
end
