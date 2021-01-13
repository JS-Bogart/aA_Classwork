// const unique = new Array {

// }

Array.prototype.unique = function() {
    let i = 0;
    let new_arr = [];
    while (i < this.length) {
        // console.log(this[i]);
        if (new_arr.includes(this[i]) === false) {
            new_arr.push(this[i]);
        }
        i++; 
    }
    return new_arr;
}

Array.prototype.twoSum = function() {
    let sum_arr = [];
    for (let i = 0; i < this.length; i++) {
        for (let x = 0; x < this.length; x++ ) {
            if (this[i] + this[x] === 0 && x > i) {
                sum_arr.push([i, x]);
            }
        }
    }
    return sum_arr;
}

Array.prototype.transpose = function() {
    let new_arr = [];
    for (let i = 0; i < this.length; i++) {
        let sub = [];
        for (let x = 0; x < this[i].length; x++) { 
            sub.push(this[x][i]);
        }
        new_arr.push(sub);
    }
    return new_arr;
}

// ---DOES NOT WORK--- 
// Array.prototype.transpose2 = function () {
//     let new_arr = this;
//     for (let i = 0; i < this.length; i++) {
//         for (let x = 0; x < this[i].length; x++) {
//             new_arr[x][i] = this[i][x];
//         }
//     }
//     return new_arr;
// }