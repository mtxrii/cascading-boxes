const x = 4;

let string = '+';
for (let i = 0; i < x; i++) {
    string += '-+' + '\n';
    for (let j = 0; j < i; j++) {
        string += '  ';
    }

    string += '| |' + '\n';
    for (let j = 0; j < i; j++) {
        string += '  ';
    }

    string += '+-+';
}
console.log(string);
