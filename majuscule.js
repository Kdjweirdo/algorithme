
var mot = process.argv[2];
var phrase = ""; 
let etat= true;

    for (var i=0; i <= mot.length-1 ; i++) {
        if (mot.charAt(i) == " ") {
            phrase += mot.charAt(i);
           etat = !etat;
           
        } else { 
           
            if (etat == true) { 
            if (i%2 == 0) {
                phrase += mot.charAt(i).toUpperCase(); 
            } else {
                phrase += mot.charAt(i).toLowerCase();
            }
            } else { 
                if (i%2 == 0) {
                    phrase += mot.charAt(i).toLowerCase();
                } else {
                    phrase += mot.charAt(i).toUpperCase();
                }

            }
        }
    }

    console.log(phrase);


