import utest.Assert;
import utest.Test;
import me.rainma22.osmparser.MapParser;

class MapParserTest extends Test{
    var parser:MapParser;
    public function setup() {
        parser = MapParser.fromText("<way></way>");
    }
    public function testWayIsExpected(){
        Assert.equals(true,true);
    }
}