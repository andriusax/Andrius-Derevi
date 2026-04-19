class PagesController < ApplicationController
  def home
    @carousel_images = CarouselImage.active
    @home_blocks = HomeBlock.published
  end
  def bio; end
  def lessons; end
  def contact; end
  def videos
    @videos = Video.all
  end

  def live
    @upcoming = Show.upcoming
    @past     = Show.past
  end

  def discography
    @releases = Release.all
  end

  def store
    @merch_items = MerchItem.all
  end
end
