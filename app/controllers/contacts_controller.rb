class ContactsController < ApplicationController

  def first_contact
    @first_contact = Contact.first
  end

  def contacts
    @contact_list = Contact.all
  end

end
