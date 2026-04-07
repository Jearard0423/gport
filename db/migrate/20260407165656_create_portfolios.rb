class CreatePortfolios < ActiveRecord::Migration[8.1]
  def change
    create_table :portfolios do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :tagline
      t.text :bio
      t.string :slug
      t.boolean :published

      t.timestamps
    end
  end
end
