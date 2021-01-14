Array.prototype.myEach = function(callback) {
    // let new_arr = []
    for (let i = 0; i < this.length; i++) {
        // new_arr.push(callback(this[i]));
        callback(this[i]);
    }
    // return new_arr
}


Array.prototype.myMap = function(cb1) {
    let new_arr = [];

    const cb2 = function(ele) {
        new_arr.push(cb1(ele));
    }

    this.myEach(cb2); 

    return new_arr;

}

Array.prototype.myReduce = function(cb, init = this[0]) {
    if (init === this[0]) {
        var acc = init;
    } else {
        var acc = this.shift;
    }
    const accumulate = function(acc, el) {
        arr += el;
    }
    this.myEach(accumulate);
    return acc;
}