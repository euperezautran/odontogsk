// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


var botonElement = document.getElementById("botonClick");
var pElement = document.getElementById("areaContador");
var contador = 51;
botonElement.onclick = function () {
    contador--;
    pElement.textContent = contador;
}
