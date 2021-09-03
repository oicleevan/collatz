function collatz(n) {
    let terms = [n];
    let term = n;
    while (term > 1) {
        if (term % 2)
            term = 3 * term + 1;
        else
            term = Math.floor(term / 2);
        terms.push(term);
    }
    return terms;
}

let n = process.argv[2]
console.log(`Calculating the collatz conjecture from the number ${n}...`)
let list = collatz(n)

console.log("The results are in: ")
console.log(`${list}`)
