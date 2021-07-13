class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :body
      t.string :description

      t.timestamps
    end
  end
end
