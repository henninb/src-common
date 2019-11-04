function main() {
  var args = process.argv.slice(1);
  if ( args.length != 2 ) {
    console.error('Usage: ' + args[0] + ' <arg1>');
    return;
  }
  process.argv.forEach(function (val, index, array) {
  console.log(index + ': ' + val);
  });
}
main()
