class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.column(:name, :string)
      t.timestamps()
    end
  end
end
