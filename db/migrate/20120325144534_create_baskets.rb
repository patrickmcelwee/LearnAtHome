class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
