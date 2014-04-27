class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.string :job_type

      t.timestamps
    end
  end
end
