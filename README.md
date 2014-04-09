#Objects and Classes

##Overview

This lab is a followup to the lecture on Ruby Objects and Classes.

__OMG You've been hired by Better Buy a leading ecommerce company!!!__

This your first day on the job and already they are throwing work at you

You've been tasked to rewrite an app using Classes (maybe you've done something like this before?)

###Luckily there is some documentation for the app###

* This app processes an order from a Customer

* The customer has a credit limit available to purchase items. 

* The app takes the customer order, checks the available credit, decrements the credit available based on the order, adds the item the customers purchase history 

* In the case where the item price is greater than the Customer'a available credit, the item is not purchased and is not added to the purchase history.

* At the end of the order the app prints out a receipt. 

* For each item in the order, a line with either APPROVED or DECLINED is printed in the receipt, depending on wether or not the Customer has enough credit for the item.

* The last part of the receipt is a list of all items in the Customer's Purchase History 


Initially the app uses a hash to store the customer info, the object of the lab is to replace the customer hash with a customer class object. 


###The QA Team###
The QA (Quality Assurance) Team is on your side, they have a whole suite of tests which are currently running against the production code. They were all passing, so all you need to do is make sure you get them going again. 

###000-StarterApp
This is the old code, which is great because all the logic you need is there!


The 000-StarterApp folder contains a working version of the application which you should run to get a feel for how the app works. 

    # Run the Original Application
    cd  000-StarterApp
    ruby app.rb

##Starter App Code Review

__On your own:__ review the code in the Starter App.

* What is it doing?
* Is there anything which you don't understand?

__In your programming pair (or three):__

* Help each other understand, research if necessary
* Discuss what could be improved about this program


###001-Labwork
This is the folder you'll be working in. You are going to write a new version of the application here. The main `app.rb` file is already written, but none of the classes it expects are done (That is what you are going to write)

    # Run the your new code
    cd  001-Labwork
    
    ruby app.rb
    ###OOOPS! This doesn't work, we're not ready to run yet :(

Since our app isn't working yet, we'll use another tool to run some tests on our
code. That tool is RSpec, we'll be covering it in detail later on, for now, don't worry about the details, but we need to check that it's installed once:

    gem install rspec

After that we can just run it:

    rpsec

Now you'll see a lot of stuff! You can ignore most of it but we need to find this important section:

```
  Failures:

  1) Customer class should exist in ''lib/customer.rb'' should be in lib/customer.rb
     Failure/Error: expect(Object.const_defined?(class_name)).to(eq(true), "Class not defined")
       Class not defined
     # /Users/stuart/.rvm/gems/ruby-2.1.0/gems/rspec-expectations-2.14.5/lib/rspec/expectations/fail_with.rb:32:in `fail_with'
    
```
With RSpec this is what we care about, this is the FIRST failure we see, this is what we are going to work on FIRST (each time)

__Follow the Error Messages Carefully__ In this case you need to create a 'Customer' class in `lib/customer.rb` . 

Do that and then run `rspec` again

You will do all your work in the 001-Labwork/lib folder. 

If you get stuck on method implementation, look at the implementation in the 000-StarterApp folder to see how it works.

If you get stuck, ask your neighbor and then try the instructor if you're still stuck. 

##Submitting your Labwork

When you are done, either all the test are passing or you are completely stuck

``` 
git add .
git commit -m"Your Name and Cohort"
git push
```

Then on GitHub create a pull request back to /stujo/ruby-classes-lab 
 

##Tips

* Always work on the first failing test

* run rspec in the 000-Labwork folder every time

* Read the description that the failing test gives you and make changes accordingly.

* Workflow note: It is helpful to divide screen with editor and terminal windows.



