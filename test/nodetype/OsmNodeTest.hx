package nodetype;

import me.rainma22.osmparser.MapParserException;
import utest.Assert;
import me.rainma22.osmparser.nodetype.OsmNode;
import utest.Test;

class OsmNodeTest extends Test{
    var node: OsmNode;
    public function setup() {
        node = new OsmNode(Xml.parse("<node id='1' lon='2' lat='3'/>").firstChild());
    }

    public function testConstrctor() {
        var nodeAttributes = node.getAttributes();
        Assert.equals(nodeAttributes.get("id"), "1");
        Assert.equals(nodeAttributes.get("lon"), "2");
        Assert.equals(nodeAttributes.get("lat"), "3");
    }

    public function testConstrctorError() {
        function badFunc(){var badNode:OsmNode = new OsmNode(Xml.parse("<node/>").firstChild());}
        Assert.raises(badFunc,MapParserException,"expected MapParserException!",
        "unexpected Exception(not MapParserException)!");
    }
}
