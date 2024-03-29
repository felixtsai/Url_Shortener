class Url < ActiveRecord::Base
  attr_accessible :link, :short_link, :vanity_url

  def generate_short_url
    @short_link = ""
    4.times do
      @short_link += (97+rand(26)).chr
    end
    return @short_link
  end

  def self.find(input)
    if input.to_i != 0
      super
    else
      find_by_vanity_url(input) || find_by_short_link(input)
    end #end if
  end #end self.find

end
