using System;
using TechTalk.SpecFlow;
using System.Collections.Generic;
using OperationOnNumber;
using NUnit.Framework;

namespace SpecFlowTestProj
{
    [Binding]
    public class SpecFlowFeatureSteps
    {
        private static List<int> numbers = new List<int>();
        private static int sum;

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int p0)
        {
            numbers.Add(p0);
        }

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            sum = Helper.AddNumbers(numbers);
        }

        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int p0)
        {
            Assert.AreEqual(120, sum);
        }
    }
}
