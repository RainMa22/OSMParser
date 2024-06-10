package me.rainma22.osmparser.nodetype;

/**
Represents A ways node in OpenStreetMap xml
**/

class OsmWay {
    /**
     * REQUIRES: the xml given is an XML Element
     * 
     * Creates a new OsmWay with the given xml Element,
     * parsing its attributes as a map
     * 
     * tags are also parsed into the map such that the map has tag's 'k' value as entry key
     *      and 'v' value as entry value 
     * 
     * If the Way is invalid(i.e only having one node, or identiical nodes), throws a 
     * BadNodeReferenceException
     * 
     * @param xml a OpenStreetMap xml element of type "way"
     */
    public function new(xml:Xml) {
        //TODO
    }

    /**
     * Returns wether or not the way is a boolean
     * 
     * in OpenStreetMap xml, a way is an area when:
     *      - the way is closed(the first node referenced is the last node referenced), and
     *      - the "area" tag isn't defined, or is defined to be "yes"
     */
    public function isArea() :Bool {
        //TODO
        return false;
    }


}
