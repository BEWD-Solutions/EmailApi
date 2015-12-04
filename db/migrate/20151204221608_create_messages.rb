class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email_to
      t.string :email_from
      t.text :message_subject
      t.text :message_text

      t.timestamps null: false
    end
  end
end
