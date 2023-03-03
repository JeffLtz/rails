class Totem < ActiveRecord::Base
  belongs_to :pirate
  before_create :update_pirate_catchphrase

  validates_presence_of :name

  def update_pirate_catchphrase
    pirate.update!(catchphrase: "#{pirate.catchphrase}, so help me #{name}!")
  end
end