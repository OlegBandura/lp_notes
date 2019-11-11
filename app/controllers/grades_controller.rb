# frozen_string_literal: true

class GradesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    binding.pry

  end

  def create
    binding.pry
  end

  private
end
