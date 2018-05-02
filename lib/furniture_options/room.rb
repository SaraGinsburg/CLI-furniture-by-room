class FurnitureOptions::Room
  attr_accessor :name, :img

  def self.list_furn_items

    #scrape overstock.com, return rooms
    # room will have name and img
    # FurnitureOptions::RoomScraper.new(https://www.overstock.com/)
    self.scrape_rooms
  end

  def self.scrape_rooms
    doc = Nokogiri::HTML(open("https://www.overstock.com/"))
    binding.pry
    # should return an array of actual rooms
    rooms = []
    rooms << self.scrape_site
    # go to overstock
    # extract the properties of a room
    # instantiate a room

    # patio = self.new
    # patio.name = "Patio & Outdoor"
    # patio.img = "ak1.ostkcdn.com/img/mxc/20180102_hp_sbr_atiooutdoor.jpg"
    # rooms << patio

    # bedroom = self.new
    # bedroom.name = "Bedroom"
    # bedroom.img = "https://ak1.ostkcdn.com/img/mxc/shop_by_room_hub_3.jpg"
    # rooms << bedroom

    # should return the furniture items available for the selected room
  end

  def self.scrape_site
    doc = Nokogiri::HTML(open("https://www.overstock.com"))
    binding.pry
  end
end
