class PagesController < ApplicationController
  def about
    puts "I Am Responding to GET"
  end

  def contact
  end

  def home
    @categories = %w(greasy hammy)
  end
end
