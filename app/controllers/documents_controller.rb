class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    @document = Document.new(permitted_params)

    if @document.save
      redirect_to documents_path
    else
      render :new
    end
  end

  def index
    @documents = Document.all.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def permitted_params
    params.require(:document).permit(:file)
  end
end
