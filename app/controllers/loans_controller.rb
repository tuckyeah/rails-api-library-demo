class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :update, :destroy]

  def index
    @loans = Loan.all
    render json: @loans
  end

  def show
    render json: @loan
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      render json: @loan, status: :created
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

  def update
    if @loan.update(loan_params)
      head :no_content
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @loan.destroy
      head :no_content
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

  private

  def set_loan
    @loan = Loan.find(params[:id])
  end

  def loan_params
    params.require(:loans).permit(:start_date, :end_date, :book_id, :borrower_id)
  end
end
