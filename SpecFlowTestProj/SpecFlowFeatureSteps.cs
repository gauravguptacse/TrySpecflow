using Microsoft.VisualStudio.TestTools.UnitTesting;
using OperationOnNumber;
using System;
using System.Collections.Generic;
using TechTalk.SpecFlow;

namespace SpecFlowTestProj
{
    [Binding]
    public class SpecFlowFeatureSteps
    {
        private static List<int> numbersToAdd = new List<int>();
        private static List<int> numbersToMultiply = new List<int>();
        private static int sum;
        private static int product;

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int p0)
        {
            numbersToAdd.Add(p0);
        }

        [Given(@"enter (.*) into the calculator")]
        public void GivenEnterIntoTheCalculator(int p0)
        {
            numbersToMultiply.Add(p0);
        }

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            sum = Helper.AddNumbers(numbersToAdd);
        }

        [When(@"press multiply")]
        public void WhenPressMultiply()
        {
            product = Helper.MultiplyNumbers(numbersToMultiply);
        }

        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int p0)
        {
            Assert.AreEqual(p0, sum);
        }

        [Then(@"result should be (.*)")]
        public void ThenResultShouldBe(int p0)
        {
            Assert.AreEqual(p0, product);
        }
    }
}
