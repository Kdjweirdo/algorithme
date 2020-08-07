var string;
var phrase = "";
function majuscule(string) {
    for (var i = 0; i < string.length ; i++) {
       var phrase = string.charAt(i);
       if (phrase.charAt(i-1) == phrase.toUpperCase()) {
           phrase.charAt(i).toLowerCase();
       } else (phraseCharAt(i) == phrase.toLowerCase()) {
           phrase.CharAt(i+1).toUpperCase;
       }

    }
}

majuscule("Salut tout le monde!");