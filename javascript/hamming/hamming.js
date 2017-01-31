var Hamming = function() {
  Hamming.prototype.compute = function(input1, input2) {
    var hammingDistance = 0, i = 0;
    if (input1.length !== input2.length) {
      throw "DNA strands must be of equal length.";
    }
    while (i < input1.length) {
      if (input1[i] !== input2[i]) {
        hammingDistance += 1;
      }
      i++;
    }
    return hammingDistance;
  }
};

module.exports = Hamming;