class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    output = ""
    self.characters.each_with_index do |character, index|
      show = Show.find_by "id = ?", self.characters[index].show_id
      output = "#{character.name} - #{show.name}"

      # binding.pry
    end
    output
  end


end
