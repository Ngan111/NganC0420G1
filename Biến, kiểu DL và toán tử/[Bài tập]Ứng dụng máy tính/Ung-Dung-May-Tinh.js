function Calculate(cal) {
    let x = document.getElementById("text1");
    let y = document.getElementById("text2");
    let z;
    let a = x.value*1;
    let b = y.value*1;
    let result = document.getElementById("result");
    if (cal === "add") {
        z = "<h3>Result:" + (a+b) + "</h3>";
    }
    if (cal === "sub") {
        z = "<h3>Result:" + (a-b) + "</h3>";
    }
    if (cal === "multi") {
        z = "<h3>Result:" + (a*b) + "</h3>";
    }
    if (cal === "divide") {
        z = "<h3>Result:" + (a/b) + "</h3>";
    }
    result.innerHTML = z;
}