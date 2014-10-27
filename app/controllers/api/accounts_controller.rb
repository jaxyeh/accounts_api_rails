module API
  class AccountsController < ApplicationController
    protect_from_forgery with: :null_session
    before_action :find_account, only: [:show, :update, :destroy]
    # respond_to :json

    def index
      @accounts = Account.all
      render json: @accounts, status: 200
    end

    def show
      render json: @account, status: 200
    end

    def showall
      @account = Account.includes(:domains).all
      render json: @account, :include => :domains, status: 200
    end

    def create
      @account = Account.new(account_params)
      if @account.save
        render json: @account, status: :created, location: @account
      else
        render json: @account.errors, status: :unprocessable_entity
      end
    end

    def update
      if @account.update(account_params)
        render json: @account, status: :created #, location: @account
      else
        render json: @account.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @account.destroy
      head :no_content
    end

    private

    # Automatically returns Query
    def find_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.permit(:name)
    end

  end
end