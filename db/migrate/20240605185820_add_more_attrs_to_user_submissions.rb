class AddMoreAttrsToUserSubmissions < ActiveRecord::Migration[7.1]
  def change
    add_column :user_submissions, :plan, :string
  end
end
