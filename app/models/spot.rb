class Spot < ApplicationRecord
  acts_as_mappable :lat_column_name => :latitude, :lng_column_name => :longitude

  def self.find(params)
    distance = self.distance(params)
    limit = self.limit(params)

    if params[:lat].present? && params[:lng].present?
      @coordinates = [params[:lat], params[:lng]]
      Spot.within(distance, origin: @coordinates).by_distance(origin: @coordinates).limit(limit)
    end
  end

  private

  def self.distance(params)
    if params[:distance].present?
      params[:distance]
    else
      500
    end
  end

  def self.limit(params)
    if params[:limit].present?
      params[:limit]
    else
      5
    end
  end
end
