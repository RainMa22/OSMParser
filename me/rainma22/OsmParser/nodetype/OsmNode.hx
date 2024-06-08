package me.rainma22.osmparser.nodetype;

import haxe.ds.StringMap;

//represents a Node in xml, with attributes store in a Map
class OsmNode {

	var id: Int;
	var lon: Float;
	var lat: Float;
	// REQUIRES: xml to be nodeType of Element
	// creates a new node with id, lat, lon provided in the xml element.
	// 			or at least one of [lon, lat] cannot be parsed into Float
	public function new(xml:Xml) {
		id = Std.parseInt(xml.get("id"));
		lon = Std.parseFloat(xml.get("lon"));
		lat = Std.parseFloat(xml.get("lat"));
		for (attribute in [id,lon,lat]){
			if(attribute == null){
				throw new MapParserException("xml element ${xml.toString()} doe not have ${attribute}!");
			}
		}
	}

	public function getID() {
		return id;
	}
	public function getLongitude(){
		return lon;
	}
	public function getLatitude(){
		return lat;
	}

	// returns a map of id, lon, lat as Strings.
	public function getAttributes():StringMap<String> {
		return ["id" => Std.string(id), "lon"=>Std.string(lon),"lat"=>Std.string(lat)];
	}
}
