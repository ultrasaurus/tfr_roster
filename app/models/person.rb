# START:method
# START:validates
# START:class
class Person < ActiveRecord::Base
# END:class
# END:method
  validates_presence_of :first_name
# END:validates
  validates_presence_of :last_name

# START:method
  def full_name
    "#{first_name} #{last_name}"
  end
# START:validates
# START:class
end
# END:class
# END:validates
# END:method
