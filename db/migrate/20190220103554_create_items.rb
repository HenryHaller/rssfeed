class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
