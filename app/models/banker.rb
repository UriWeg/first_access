class Banker < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    phonenumber :string
    name        :string
    timestamps
  end

 belongs_to :bank
 has_many :applicants, :accessible => true

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
