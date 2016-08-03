class ContactsController < ApplicationController

  def first_contact
    @first_contact = Contact.first
  end

  def index
    if current_user
      @contact_list = Contact.where(user_id: current_user.id)
    else
      redirect_to "/login"
    end
  end

  # def phone_index
  #   @contact_list = Contact.all
  # end

  def show
    if current_user.id == Contact.find_by(id: params[:id]).user_id
      @contact = Contact.find_by(id: params[:id])
    else
      redirect_to "/"
    end
  end

  def new
    if current_user == nil
      redirect_to "/login"
    end
  end

  def create
    contact = Contact.new({
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      user_id: params[:user_id]})
    if contact.save
      flash[:success] = "Contact successfully created!"
      redirect_to "/contacts/#{contact.id}"
    else
      flash[:danger] = "Invalid Contact"
      redirect_to "/contacts/new?user_id=#{params[:user_id]}"
    end
  end

end
