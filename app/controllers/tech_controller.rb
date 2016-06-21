class TechController < ApplicationController
  def index
  end

  def show
    @idparams = params[:id].to_i

    @titles = ["Airbnb", "Tesla", "Uber"]
    @current_title = @titles[@idparams - 1]


    airbnb_header = Header.new("Origins", "Founders", "Funding")
    airbnb_banner = Images.new('/airbnb_logo.png')
    airbnb_text = Text.new("Left Paragraph A", "Center Paragraph A", "Right Paragraph A")

    tesla_header = Header.new("Origins", "Founders", "Funding")
    tesla_banner = Images.new('/tesla_logo.png')
    tesla_text = Text.new("Left Paragraph T", "Center Paragraph T", "Right Paragraph T")

    uber_header = Header.new("Origins", "Founders", "Funding")
    uber_banner = Images.new('/uber_logo.png')
    uber_text = Text.new("Left Paragraph U", "Center Paragraph U", "Right Paragraph U")

    if @idparams == 1
      @header_display_left = airbnb_header.hleft
      @header_display_center = airbnb_header.hcenter
      @header_display_right = airbnb_header.hright
      @banner_display = airbnb_banner.banner
      @text_display_left = airbnb_text.pleft
      @text_display_center = airbnb_text.pcenter
      @text_display_right = airbnb_text.pright
    elsif @idparams == 2
      @header_display_left = tesla_header.hleft
      @header_display_center = tesla_header.hcenter
      @header_display_right = tesla_header.hright
      @banner_display = tesla_banner.banner
      @text_display_left = tesla_text.pleft
      @text_display_center = tesla_text.pcenter
      @text_display_right = tesla_text.pright
    elsif @idparams == 3
      @header_display_left = uber_header.hleft
      @header_display_center = uber_header.hcenter
      @header_display_right = uber_header.hright
      @banner_display = uber_banner.banner
      @text_display_left = uber_text.pleft
      @text_display_center = uber_text.pcenter
      @text_display_right = uber_text.pright
    end



  end

end

class Images
  attr_accessor :banner

  def initialize(banner)
    @banner = banner
  end
end

class Header
  attr_accessor :hleft, :hcenter, :hright

  def initialize(hleft, hcenter, hright)
    @hleft, @hcenter, @hright = hleft, hcenter, hright
  end
end

class Text
  attr_accessor :pleft, :pcenter, :pright

  def initialize(pleft, pcenter, pright)
    @pleft, @pcenter, @pright = pleft, pcenter, pright
  end
end
