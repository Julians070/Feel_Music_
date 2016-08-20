class WelcomeController < ApplicationController
  def index
    @products  = Product.last(8)
  end
end
