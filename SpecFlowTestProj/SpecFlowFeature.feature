Feature: SpecFlowFeature
		 Perform operations on number

@AddNumbers
Scenario: Add two numbers
	Given I have entered 80 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 150 on the screen

@ProductOfNumbers
Scenario: Multiply two numbers
	Given enter 10 into the calculator
	And enter 10 into the calculator
	When press multiply
	Then result should be 100
