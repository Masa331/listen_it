class DocumentsController < ApplicationController
  def new
  end

  def create
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
end
