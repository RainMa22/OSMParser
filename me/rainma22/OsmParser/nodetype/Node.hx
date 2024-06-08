package me.rainma22.osmparser.nodetype;

import Xml.XmlType;
import haxe.ds.StringMap;

class Node {
	var attributes:StringMap<String>;

	// REQUIRES: xml to be nodeType of Element
	// creates a new node with attributes provided in the xml element.
	public function new(xml:Xml) {
		attributes = new StringMap<String>();
		for (attribute in xml.attributes()) {
			attributes.set(attribute, xml.get(attribute));
		}
	}

	public function getAttributes():StringMap<String> {
		return attributes.copy();
	}
}
