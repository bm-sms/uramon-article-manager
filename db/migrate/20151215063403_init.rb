class Init < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name, null: false
      t.string :fqdn, null: false
      t.index  :fqdn, unique: true

      t.timestamps null: false
    end

    create_table :categories do |t|
      t.references :site, null: false, foreign_key: true

      t.string :name,        null: false
      t.text   :description, null: false
      t.string :slug,        null: false
      t.index  :slug, unique: true

      t.timestamps null: false
    end

    create_table :articles do |t|
      t.references :site,     null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.string   :title, null: false
      t.text     :body,  null: false
      t.datetime :published_at

      t.timestamps null: false
    end

    create_table :images do |t|
      t.string :image, null: false

      t.timestamps null: false
    end
  end
end
