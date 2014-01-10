=======
Controller Refactoring
==========

### A detailed explanation

For a more detailed explanation of the refactoring process, check out **[this blog post](http://www.simontaranto.com/2013/12/11/it-all-comes-together-ruby-js-and-functional-	programming.html)**.

### Summary

In this project I refactored an overly complicated controller action (TransactionsController#create) that allowed our group to proceed much faster and have a cleaner codebase.

#### The starting point
Here's what the controller looked like when we started having problems (see the method at line 20): https://github.com/srt32/fourthmeal/blob/c07e7ce8124973e267bfe78be6cc08ca7a6c0550/app/controllers/transactions_controller.rb


#### After the refactor
Here's what the controller became after refactoring:  https://github.com/srt32/fourthmeal/blob/master/app/controllers/transactions_controller.rb

The controller now offloaded logic to another class:  
https://github.com/srt32/fourthmeal/blob/master/app/use_cases/complete_purchase.rb





### To run the app:

To run tests:
`rake test_all`

To start development mail server:
`$ gem install mailcatcher`
`$ mailcatcher`
visit http://127.0.0.1:1080 to see the results in a faux email client

To Run and view code:
 `git clone git@github.com:bwinterling/fourthmeal.git`
 
 Open the file in your favorite text editor
 
 Run the server: 
 `$ rails s`
 
 Good to go!
