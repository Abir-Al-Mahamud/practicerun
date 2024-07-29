class RemoveConfirmableFromUsers < ActiveRecord::Migration[7.1]
  def change
    # db/migrate/[timestamp]_remove_confirmable_from_users.rb
    remove_column :users, :confirmation_token, :string
    remove_column :users, :confirmed_at, :datetime
    remove_column :users, :confirmation_sent_at, :datetime
    remove_column :users, :unconfirmed_email, :string # Only if using reconfirmable


  end
end
