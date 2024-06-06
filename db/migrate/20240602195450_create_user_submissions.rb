class CreateUserSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :user_submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :website
      t.text :text
      t.string :job_role
      t.string :status

      t.timestamps
    end
  end
end
