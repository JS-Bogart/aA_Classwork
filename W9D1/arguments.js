// function sum() {
//     let sum = 0;
//     for (let i = 0; i < arguments.length; i++) {
//         sum += arguments[i];
//     }
//     return sum;
// };

// console.log(sum(1, 2, 3, 4)); //=== 10;
// console.log(sum(1, 2, 3, 4, 5)); // === 15;

function sum(...args) {
    return args.reduce((acc, ele) => acc + ele);
}

console.log(sum(1, 2, 3, 4)); //=== 10;
console.log(sum(1, 2, 3, 4, 5)); // === 15;


