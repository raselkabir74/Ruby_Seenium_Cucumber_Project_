class NexientContactPageLocators
  attr_accessor :first_name_label, :last_name_label, :verification_code_locator, :area_of_interest_name,
                :area_of_interest_id, :hs_form_iframe_0_id, :company_email_label, :company_name_label,
                :phone_number_label, :i_have_read_label

  def initialize
    # [START] Label names
    @first_name_label = "First name"
    @last_name_label = "Last name"
    @company_email_label = "Company Email"
    @company_name_label = "Company name"
    @phone_number_label = "Phone number"
    @i_have_read_label = "I have read, understood, and agree to the"
    # [END] Label names

    # [START] Attribute names
    @area_of_interest_name = "area_of_interest"
    @area_of_interest_id = "area_of_interest-d7fc8a90-2e08-45e2-8acb-d2568a57d2a1"
    @hs_form_iframe_0_id = "hs-form-iframe-0"
    # [END] Attribute names
  end

end