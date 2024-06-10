package nodetype;

import me.rainma22.osmparser.exceptions.AttributeNotFoundException;
import utest.Assert;
import me.rainma22.osmparser.nodetype.OsmNode;
import utest.Test;
import Std.string in str;

class OsmNodeTest extends Test{
    var node: OsmNode;
    public function setup() {
        node = new OsmNode(Xml.parse("<node id='1' lon='2' lat='3'/>").firstChild());
    }

    public function testConstrctor() {
        Assert.equals(node.getID(), 1);
        Assert.equals(node.getLongitude(), 2);
        Assert.equals(node.getLatitude(), 3);
        Assert.equals(node.getNames().length, 0);
    }

    public function testConstrctorError() {
        function badFunc(){var badNode:OsmNode = new OsmNode(Xml.parse("<node/>").firstChild());}
        Assert.raises(badFunc, AttributeNotFoundException,"expected MapParserException!",
        "unexpected Exception(not MapParserException)!");
    }

    public function testGetAttributes(){
        var id = node.getID();
        var lon = node.getLongitude();
        var lat = node.getLatitude();
        var output = ["id" => str(id), "lon" => str(lon), "lat" => str(lat), "names"=>""];
        Assert.same(output, node.getAttributes());
    }

    @:depends(testGetAttributes)
    public function testGetAttributesWithNames(){
        var names = ["apple","banana"];
        node.addNames(names);
        var id = node.getID();
        var lon = node.getLongitude();
        var lat = node.getLatitude();
        var output = ["id" => str(id), "lon" => str(lon), "lat" => str(lat), "names"=>names.join(",")];
        trace(node.getAttributes());
        Assert.same(output, node.getAttributes());
    }

    public function testAddName(){
        node.addName("apple");
        Assert.isTrue(node.getNames().contains("apple"));
    }

    public function testAddNames(){
        var arr = ["apple", "banana"];
        node.addNames(arr);
        for (name in arr){
            Assert.isTrue(node.getNames().contains(name));
        } 
    }
}
