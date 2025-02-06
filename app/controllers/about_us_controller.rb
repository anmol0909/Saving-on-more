class AboutUsController < ApplicationController
  def index
    @about = About.last
  end
end
