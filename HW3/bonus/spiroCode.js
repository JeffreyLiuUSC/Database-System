const XMLWriter = require('xml-writer');
const fs = require('fs');

function getSpirographCoordinates() {
    var origin = {
        lat: 34.02126669,
        lng: -118.28945793
    };
    var paths = [];
    var R = 8;
    var r = 1;
    var a = 4;
    var x0 = R + r - a;
    var y0 = 0;

    var cos = Math.cos;
    var sin = Math.sin;
    var pi = Math.PI;
    var nRev = 16;
    var spiroScale = 0.0001;
    for (var t = 0.0; t < (pi * nRev); t += 0.02) {
        var x = (R + r) * cos((r / R) * t) - a * cos((1 + r / R) * t);
        var y = (R + r) * sin((r / R) * t) - a * sin((1 + r / R) * t);
        x *= spiroScale;
        y *= spiroScale;
        paths.push({
            lat: origin.lat + x,
            lng: origin.lng + y
        });
    }
    return paths;
}

var paths = getSpirographCoordinates();
var ws = fs.createWriteStream('./spiro.kml');

var xw  = new XMLWriter(false, function(string, encoding) {
    ws.write(string, encoding);
});

xw.startDocument('1.0', 'UTF-8')
    .startElement('kml')
    .writeAttribute('xmlns', 'http://earth.google.com/kml/2.0')
    .startElement('Document')


paths.forEach(function(path) {
    xw.startElement('Placemark')
        .startElement('Style')
        .startElement('IconStyle')
        .startElement('scale')
        .text('0.2')
        .endElement()
        .startElement('Icon')
        .startElement('href')
        .text('ball.png')
        .endElement()
        .endElement()
        .endElement()
        .endElement()
        .startElement('Point')
        .startElement('coordinates')
        .text(path.lng + ','  + path.lat)
        .endElement()
        .endElement()
        .endElement();
});

xw.endElement().endElement().endDocument();

ws.end();