class CreateCreateUserSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :create_user_submissions do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :website
      t.string :job_role
      t.string :text
      t.string :status

      t.timestamps
    end
  end
end
