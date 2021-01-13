Array.prototype.myEach = function(callback) {
    // let new_arr = []
    for (let i = 0; i < this.length; i++) {
        // new_arr.push(callback(this[i]));
        callback(this[i]);
    }
    // return new_arr
}


function myForEach(array, cb) {
    for (let i = 0; i < array.length; i++) {
        cb(array[i]);
    }
}

// myForEach([1, 2, 3], logIfEven);