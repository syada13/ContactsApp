class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
    @addresses = Address.all
    @phoneNumbers = PhoneNumber.all
  end
  
  def new
    @contact = Contact.new
    @contact.addresses.build
    @contact.phone_numbers.build
  end 
  
  def edit
     @contact = Contact.find(params[:id])
  end 
 
  def create
      @contact = Contact.new(contact_params)
      if @contact.save
         flash[:success] = "Contact created successfully!"
         redirect_to contacts_path
        else
        flash[:error]  = "There was problem creating contact. Please try later."
        render 'new'
      end 
    end 

    def update
          @contact = Contact.find(params[:id])
          if @tour.update(contact_params)
                flash[:success] = "Contact updated!"
                redirect_to contacts_path
          else
                flash[:error]  = "There was problem updating contact. Please try later."
          end
    end
    
  	private
    
    def contact_params
      params.require(:contact).permit(
      :first_name,:last_name,:gender,addresses_attributes: [:id, :_destroy, :address_line1,:address_line2, :city, :state, :postal_code, :country], phone_numbers_attributes: [:id, :_destroy,:home_phone_num, :work_phone_num,:mobile_phone_num]
      )
    end
    
end
