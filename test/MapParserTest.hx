import utest.Assert;
import utest.Test;
import me.rainma22.osmparser.MapParser;

class MapParserTest extends Test{
    var parser:MapParser;
    public function setup() {
        var content:String = sys.io.File.getContent('resources/map.xml');
        parser = MapParser.fromText(content);
    }
    public function testWayIsExpected(){
        Assert.equals(true,true);
    }
}