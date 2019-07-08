class FoodsController < ApplicationController
  def index
    q = params[:q]

    render locals: {
      facade: UsdaFacade.new(q)
    }
  end
end
