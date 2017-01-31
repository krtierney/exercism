var Bob = function() {};

Bob.prototype.hey = function(input) {

  if (input === input.toUpperCase() && input.match(/[A-Z]/)) {
    return 'Whoa, chill out!'
  } else if (input.slice(-1) === '?') {
    return 'Sure.'
  } else if (!input.replace(/^\s+|\s+$/g,"")) {
    return 'Fine. Be that way!'
  } else return 'Whatever.'
};

module.exports = Bob;
