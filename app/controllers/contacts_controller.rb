class ContactsController < ApplicationController

  def first_contact
    @first_contact = Contact.first
  end

  def index
    @contact_list = Contact.all
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
