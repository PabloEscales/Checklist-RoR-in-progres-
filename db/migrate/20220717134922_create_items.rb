class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
