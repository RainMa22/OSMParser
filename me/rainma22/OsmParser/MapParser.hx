package me.rainma22.osmparser;
import me.rainma22.osmparser.nodetype.OsmNode;

class MapParser{

    private var xml: Xml;
    /** 
    creates A new MapParser from the given text string
    **/
    private function new(text: String) {
        xml = Xml.parse(text);
        for (child in xml.elementsNamed('osm').next().elements()){
            trace(child.toString());
            var node: OsmNode = new OsmNode(child);
        }
    }

    /** 
    creates A new MapParser from the given text string
    **/
    public static function fromText(text:String) : MapParser{
        return new MapParser(text);
    }
}