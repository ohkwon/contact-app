class Contact < ActiveRecord::Base

  belongs_to :user

  def friendly_time
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}" 
  end

  def japan_phone
    phone = phone_number.split(//)
    phone_number = "(#{phone[0]}#{phone[1]}#{phone[2]}) #{phone[3]}#{phone[4]}#{phone[5]}-#{phone[6]}#{phone[7]}#{phone[8]}#{phone[9]}"
    "+81 " + phone_number
  end

end
