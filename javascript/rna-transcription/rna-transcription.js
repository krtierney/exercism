var DnaTranscriber = function() {};

DnaTranscriber.prototype.toRna = function(input) {
  toRna = {
    C: "G",
    G: "C",
    A: "U",
    T: "A"
  };
  var i = 0, RNA = "";
  while (i < input.length) {
    RNA = RNA.concat(toRna[input.charAt(i)]);
    console.log(RNA);
    i++;
    };
  return RNA;
};

module.exports = DnaTranscriber;
