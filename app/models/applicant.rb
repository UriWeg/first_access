class Applicant < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    phonenumber :string
    name        :string
    score       :float
    confirmed   :boolean
    timestamps
  end

   belongs_to :banker

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
