class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :url_audio

      t.timestamps null: false
    end
  end
end
