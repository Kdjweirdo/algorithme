var mot = process.argv[2];

var fs = require('fs');
var arg2 = process.argv[3];
var liste = fs.readFileSync(arg2,"utf8").split("\n");


var motarr = mot.split('').sort().join('');
console.log(motarr)

function anagramme (motarr,liste) {
    var listearr = [];
    for (var i = 0; i < liste.length ; i++) {
        listearr[i] = liste[i].split('').sort().join('');
        if (motarr == listearr[i]) {
            return listearr[i];
        }

    } 
    return "Rien trouvé";
}

 console.log(anagramme(motarr,liste)); 




