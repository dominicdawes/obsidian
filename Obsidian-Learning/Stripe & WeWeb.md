
# Easy
Quick and Easy! Using Stripe's branded page and customer portal to intake payments

## Initial subscription payment
 Click on "create payment link" in Stripe Product Catalogue, in Stripe search bar
 link looks like: https://buy.stripe.com/test_3cs4id9iMdMUcN2288
 
![[Pasted image 20241217120052.png]]

### Customer Cancellation or change subscription
🔍"customer portal" in Stripe search bar
Portal link looks like: https://billing.stripe.com/p/login/test_fZe6rg0li8vQ6yc3cc

option to prefill the stripe portal with a user's given email:
```JS
const user_email = 'user@gmail.com'
"https://billing.stripe.com/p/login/test_fZe6rg0li8vQ6yc3cc?prefilled_email=" + user_email

```
![[Pasted image 20241217115535.png]]

# Advanced
more custom integration into your custom code / low code app