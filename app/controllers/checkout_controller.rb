class CheckoutController < ApplicationController
  def index
    values = { 
	  :business => 'chens-merchant@shinetechchina.com',
      :cmd => '_cart',
	  :upload => 1,
	  :return => 'www.baidu.com',
	}	

	values.merge!({ 
	  "amount_1" => 1,
	  "item_name_1" => 1,
	  "item_number_1" => 1,
	  "quantity_1" => '1'
	})
    
    # For test transactions use this URL
	@url  = "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query

  end


end
