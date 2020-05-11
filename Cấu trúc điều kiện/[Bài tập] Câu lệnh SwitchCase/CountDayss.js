function showMessage() {
    var x = document.getElementById("amount").value;
    switch (x) {
        case 'January':
        case 'March':
        case 'May':
        case 'July':
        case 'August':
        case 'October':
        case 'December':
            alert("This month has 31 days");
            break;
        case 'February':
            alert("This month has 28 or 29 days");
            break;
        case 'April':
        case 'June':
        case 'September':
        case 'November':
            alert("This month has 30 days");
            break;
    }
}