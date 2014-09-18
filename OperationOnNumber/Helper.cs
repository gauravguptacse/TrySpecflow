using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OperationOnNumber
{
    public class Helper
    {
        public static int AddNumbers(List<int> numbers)
        {
            int sum = 0;

            numbers.ForEach(a => sum += a);

            return sum;
        }

        public static int MultiplyNumbers(List<int> numbers)
        {
            int product = 1;

            numbers.ForEach(a => product *= a);

            return product;
        }
    }
}
