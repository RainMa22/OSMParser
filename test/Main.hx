import utest.ui.Report;
import utest.Runner;

class Main{
    static public function main(): Void {
        var runner = new Runner();
        runner.addCase(new MapParserTest());
        runner.addCases(nodetype);
        Report.create(runner);
        runner.run();
    }
}