namespace Test;

class Pregmatch
{
	public function testWithoutReturnAndMatches()
	{
            var pattern, subject;

            let pattern = "/def$/";
            let subject = "abcdef";

            // without return auto created temp variable
            preg_match(pattern, subject);

            // compiler optimized , using return_value variable
            return preg_match(pattern, subject);

	}

	public function testWithoutReturns()
	{
            var pattern, subject, matches = "";

            let pattern = "/def$/";
            let subject = "abcdef";

            preg_match(pattern, subject, matches);

            return matches;
	}

	public function testWithoutMatches()
	{
            var pattern, subject, matched;

            let pattern = "/def$/";
            let subject = "abcdef";

            let matched = preg_match(pattern, subject);

            return matched;
	}

        public function testPregMatchAll() {

            var pattern, subject, matched;

            let pattern = "/def$/";
            let subject = "abcdef";

            return preg_match_all(pattern, subject);
        }

        public function testPregMatchFallback() {

            var pattern, subject, matched, matches;
            let matches = [];

            let pattern = "/def$/";
            let subject = "abcdef";

            return preg_match(pattern, subject, matches, 0, 0);
        }
}
