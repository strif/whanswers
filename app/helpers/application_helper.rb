module ApplicationHelper
  
  #This will take an object and an attribute (@user, email) and it will return
  #an asterisc when that attribute requires validation of presence
  #on the model of a given object
    def mark_required(object, attribute)
  "*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
  end
end
