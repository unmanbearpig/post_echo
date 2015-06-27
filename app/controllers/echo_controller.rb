class EchoController < ApplicationController
  def index
  end

  def create
    @params = params.to_h
  end
end
