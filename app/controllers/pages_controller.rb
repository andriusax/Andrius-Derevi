class PagesController < ApplicationController
  def home
    @carousel_images = CarouselImage.active
    @home_blocks = HomeBlock.published
  end
  def bio; end
  def lessons; end
  def contact; end

  def contact_submit
    name    = params[:name].to_s.strip
    email   = params[:email].to_s.strip
    message = params[:message].to_s.strip

    if name.present? && email.present? && message.present?
      ContactMailer.contact_email(name: name, email: email, message: message).deliver_now
      render json: { ok: true }
    else
      render json: { ok: false, error: "All fields are required." }, status: :unprocessable_entity
    end
  end
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
