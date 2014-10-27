module API
  class DomainController < ApplicationController
    protect_from_forgery with: :null_session
    before_action :find_domain, only: [:show, :update, :destroy]

    def index
      @domains = Domain.all
      render json: @domains, status: 200
    end

    def show
      render json: @domain, status: 200
    end

    def create
      @domain = Domain.new(domain_params)
      if @domain.save
        render json: @domain, status: :created
      else
        render json: @domain.errors, status: :unprocessable_entity
      end
    end

    def update
      if @domain.update(domain_params)
        render json: @domain, status: :created
      else
        render json: @domain.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @domain.destroy
      head :no_content
    end

    private

    # Automatically returns Query
    def find_domain
      @domain = Domain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def domain_params
      params.permit(:account_id, :hostname, :origin_ip_address)
      # params.require(:hostname).require(:ip)
    end

  end
end