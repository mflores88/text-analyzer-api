# frozen_string_literal: true

module V1
  # Health controller to check app state
  class HealthController < ApplicationController
    def ping
      render json: { message: 'pong' }, status: :ok
    end
  end
end
