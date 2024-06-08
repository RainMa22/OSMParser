package me.rainma22.osmparser.nodetype;

import haxe.ds.StringMap;

/**represents a Node in xml, with attributes store in a Map **/
class OsmNode {
	var id:Int;
	var lon:Float;
	var lat:Float;
	var names:Array<String>;

	/** 
	    REQUIRES: xml to be nodeType of Element
	 
	 
		Initiates names as an empty array;

		Creates a new node with id, lat, lon provided in the xml element.
		 			or at least one of [lon, lat] cannot be parsed into Float
	**/
	public function new(xml:Xml) {
		names = new Array<String>();
		id = Std.parseInt(xml.get("id"));
		lon = Std.parseFloat(xml.get("lon"));
		lat = Std.parseFloat(xml.get("lat"));
		for (attribute in [id, lon, lat]) {
			if (attribute == null) {
				throw new MapParserException("xml element ${xml.toString()} doe not have ${attribute}!");
			}
		}
	}

	public function getID() {
		return id;
	}

	public function getLongitude() {
		return lon;
	}

	public function getLatitude() {
		return lat;
	}

	/** Adds the name into the array of names in the Node**/
	public function addName(name:String) {
		if (this.names.contains(name))
			return;
		names.push(name);
	}

	/** Adds the array of names into the array of names in the Node
	**/
	public function addNames(names:Array<String>) {
		for (name in names) {
			addName(name);
		}
	}

	/** Returns a copy of this.names**/
	public function getNames(): Array<String> {
		return names.copy();
	}

	/** returns a map of id, lon, lat as Strings, and names as names joined by comma;**/
	public function getAttributes():StringMap<String> {
		return [
			"id" => Std.string(id),
			"lon" => Std.string(lon),
			"lat" => Std.string(lat),
			"names" => names.join(",")
		];
	}
}
