package nodetype;

import utest.Assert;
import haxe.rtti.XmlParser;
import me.rainma22.osmparser.nodetype.Node;
import utest.Test;

class NodeTest extends Test{
    var node: Node;
    public function setup() {
        node = new Node(Xml.parse("<node one='1' two='2'/>").firstChild());
    }

    public function testConstrctor() {
        var nodeAttributes = node.getAttributes();
        Assert.equals(nodeAttributes.get("one"), "1");
        Assert.equals(nodeAttributes.get("two"), "2");
    }
}
