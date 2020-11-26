=begin

PEDAC

Problem
- inputs: 
    - loan amount (integer)
    - annual percentage rate/APR (integer)
    - loan duration (integer
- output:
    - monthly payment (integer)

Examples
  - no cases provide, skipping due to scope
  
Data structure
  - integers for inputs, formula provided along with suitable variables
  
Algorithm
  Informal: 
  
    Declare empty variables 
      - loan amount
      - annual percentage rate
      - loan duration
    
    Welcome user
    Get loan amount, save to variable
      Check if valid; ask again if not
      Convert to integer
    Get annual percentage rate as whole float, save to variable
      Check if valid; ask again if not
      Convert to integer
      Convert to monthly
      Convert to percentage
    Get loan duration in years, save to variable
      Check if valid; ask again if not
      Convert to integer
      Convert to months
    Calculate and output to user
    Ask if they want to run again
    
   Formal:
    
    SET loan_amount = ''
    SET apr = ''
    SET loan_duration = ''
    
    PRINT "Welcome to the mortgage calculator!"
    
    PRINT "What's your loan amount?"
    loan_amount = GET
    LOOP
      IF valid_float?
        break
      ELSE
        "Hmm, that doesn't look like a valid number. Please enter a valid number."
    loan_amount = loan_amount as integer
    
    PRINT "What's your APR? Ex. 5.5%, 2.8%, etc."
    apr = GET
    LOOP
      IF valid_float?
        break
      ELSE
        "Hmm, that doesn't look like a valid number. Please enter a valid number."
    apr = apr as integer / 100
    mpr = apr / 12
    
    PRINT "What's your loan duration in years? Ex. 5.5, 2.3, etc."
    loan_duration = GETS
    LOOP
      IF valid_float?
        break
      ELSE
        "Hmm, that doesn't look like a valid number. Please enter a valid number."
    