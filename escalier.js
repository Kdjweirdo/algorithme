const [node, ficher, num] = process.argv;
  var dièse;
var espace;
var algo;
function escalier(arg){
for (var i = 1;i<5; i++) {
 espace = arg - i;
 dièse = i;

 algo = " ".repeat(espace) + "#".repeat(dièse);
 console.log(algo);
  }
}

escalier(num);
