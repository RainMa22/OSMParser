package me.rainma22.osmparser.nodetype;

import haxe.ds.StringMap;

class Node {
	var attributes:StringMap<String>;
    var connects: List<String>;

	public function new(xml:Xml) {
		attributes = new StringMap<String>();
		for (attribute in xml.attributes()) {
			attributes.set(attribute, xml.get(attribute));
		}
	}
}
