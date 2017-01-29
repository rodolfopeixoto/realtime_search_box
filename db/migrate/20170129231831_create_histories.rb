class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :search
      t.integer :count_search
      t.boolean :article
      t.string :ip_user

      t.timestamps
    end
  end
end
