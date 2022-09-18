class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.references :job, null: false, foreign_key: true
      t.string :status, null: false, default: 'active'

      t.timestamps
    end
  end
end
