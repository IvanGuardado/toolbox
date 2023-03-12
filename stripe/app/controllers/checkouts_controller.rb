YOUR_DOMAIN = "http://localhost:3000"
PRICE_ID = "price_1MkoNZAITdZjvDCKA9WrzqRy"

class CheckoutsController < ApplicationController
    def create
      session = Stripe::Checkout::Session.create({
        mode: 'subscription',
        line_items: [{
          quantity: 1,
          price: PRICE_ID
        }],
        success_url: YOUR_DOMAIN + '/success.html?session_id={CHECKOUT_SESSION_ID}',
        cancel_url: YOUR_DOMAIN + '/cancel.html',
      })

      redirect_to session.url, allow_other_host: true
    end
end
