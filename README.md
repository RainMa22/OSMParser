# RainMa22's OSMParser(Work In Progress)

This is a Haxe-based Parser for Open Street Map targeting JavaScript.

This main logic code will be kept as portable as possible to allow for transcoding into other languages in the future.

The Goal of this project is to map OpenStreetMap data into a graph(weighed by distance), and also calculate the approximate duration of walking from one OSM location to another.

This is intend to reduce reliance on using API reliance on tools such as OSRM/Vahalla, etc. On projects needing to use OpenStreetMap features without needing the resources to create a private server.

## TODO LIST
- [ ] Parse the map into nodes
    - [ ] using ways, data nodes will know its neighbors
    - [ ] location(named area) will be mapped to nodes connecting to the main node network
- [ ] calculate the walk/drive(bike?) time between two nodes
    - [ ] calculate the distance of two nodes
        - [ ] lon/lat converstion to kilometers
        - [ ] using manhattan distance
        - [ ] using dijkstra's algorithm
        - [ ] (maybe) A* for performance reasons?

## Development Dependency
OSMParser needs ``utest`` Haxe package to run its unit tests.

Please run `haxelib install utest` before writing tests for the project.