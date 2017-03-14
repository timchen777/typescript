function hi() {
  console.log("Hi ts");
}

hi();

var fullName : string = "T C";
let paidAccount : boolean = true;
const versionNumber : number = 1.3;
fullName = "Next C";
paidAccount = false;
console.log(fullName);
console.log(paidAccount);
console.log(versionNumber);

function printName(f,l) {
  let greeting : string = "Hi ";
  console.log(greeting + f + " " + l);
}
printName("Nordan","Chen");

type Ar1 = Array<string|number>;
let p1 : Ar1 = ["aa","bb","cc"];
let p2 : Ar1 = [1,2,3];
console.log(p1);
console.log(p2);

var names : string[]|string;
names = ["Jordan Hudgens", "Tiffany Hudgens"];
console.log(names);
names = "Kristine Hudgens";
console.log(names);

let password : string = 'zxcvzxcv';
if(password == 'asdfasdf') {
	console.log('Yes, asdfasdf is the password');
} else if(password == 'zxcvzxcv') {
	console.log('Yes, zxcvzxcv is the password');
} else {
	console.log('Sorry, permission denied');
}



