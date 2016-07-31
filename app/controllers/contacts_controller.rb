class ContactsController < ApplicationController

  def first_contact
    @first_contact = Contact.first
  end

  def index
    if params[:search]
      @contact_list = Contact.where("first_name ILIKE ? OR middle_name ILIKE ? OR last_name ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @contact_list = Contact.all
    end
  end

  def phone_index
    @contact_list = Contact.all
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new

  end

  def create
    @id = params[:id]
  end

end
