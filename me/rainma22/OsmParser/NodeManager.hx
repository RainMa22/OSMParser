package me.rainma22.osmparser;

import me.rainma22.osmparser.nodetype.OsmNode;
import haxe.ds.StringMap;

// A class responsible for maintaining a map of nodes and can search up nodes by ID or Name;
class NodeManager{
    var nodeMap: StringMap<OsmNode>;
    var namedNodes: StringMap<OsmNode>;

    public function new() {
        this.nodeMap = new StringMap<OsmNode>();     
    }
    
    function getNodeByID(ID: String){
        return this.nodeMap.get(ID);
    }

    function addNode(node:OsmNode){
        this.nodeMap.set(node.getAttributes().get("id"), node);
    }

}