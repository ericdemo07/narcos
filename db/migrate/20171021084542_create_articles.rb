class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :address_line_1
      t.string :address_line_2
      t.float :donation_amount
      t.text :content
      t.string :img
      t.string :mail_id
      t.integer :phone
      t.integer :likes_count
      t.integer :share_count
      t.date :dob

      t.timestamps
    end
  end
end
