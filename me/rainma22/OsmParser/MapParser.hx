package me.rainma22.osmparser;
class MapParser{

    private var xml: Xml;
    // creates A new MapParser from the given text string
    private function new(text: String) {
        xml = Xml.parse(text);
    }

    // creates A new MapParser from the given text string
    public static function fromText(text:String) : MapParser{
        return new MapParser(text);
    }
}