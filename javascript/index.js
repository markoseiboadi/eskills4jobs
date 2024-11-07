//define a variable age and assign the value 17 to it.
//check if the age is less than 18," You are not eligible"

//if the age is between 18 and 50, "you are eligible"

//if the age is greater than 50, "you are not eligible"

//let age = 60;

//if (age <18) {
//     console.log("You are underage,so you are not eligible");
    
// } else if (age>=18 && age<=50) {
//     console.log("You are eligible");
// } else {
//     console.log("You are too old, so therefore you are not eligible");
// }

// for (let i=0;i<5;i++){
//     console.log(i)
// }


// GREETING
// function greet(){
//     console.log("hello, World")
// }
// greet()

// function greetuser(name) { 
//     console.log("Hello"+name,)
// }
// greetuser("john")

// write  a funtion that performs an addition with the parameters a,b and log 
// the results, your argument are 10,5

// function addAndLog (a, b) {
//     let result = a + b
//     return result;
// }




// const addition = function addAndLog(a, b) {
//     let result = a + b;
// return result;
// }

// console.log(addition(10,5))





// const greeting = () => {
//     let message = 'Hello';
//     console.log(message);
// }

// greeting();


// Array
// example 1
// let students = ["Christy", "Gloria", "Lois", "Prince", "Sly"]; 
    // index          0         1         2    3         4
// The computer begins its counting from 0.
// console.log(students[3]);


// To find the total number of the legth or values in the Array
// console.log(students.length)


// To find the last student in the array when we know the length
// console.log(students[students.length-1]);


// example 2
// let numbers = [1,23,25,15,30,17,25,28]
// // to get total length
// // console.log(numbers.length)

// // to get the last value 
// console.log(numbers[numbers.length-1])

// example 3
// let courses = new Array("Maths", "English", "Science", "social studies");
// console.log(courses);
// use console.pop() to remove last value 
// console.log(courses.pop());
// console.log(courses)

// adding the course 'Biology' to the courses array 
// courses.push("Biology");


// using 'for loops'
// for (let i = 0; i< courses.length; i++) {
//     console.log(i)
//     console.log(courses[i]);
// }

// to determine maths and science or intervals
// for (let i = 0; i< courses.length; i+=2) {
//     console.log(i)
//     console.log(courses[i]);
// }


// 'forEach' loops
// courses.forEach((course)) => {
    // console.log(course);
// }



// OBJECTS
// let students = {
//     firstName: "Lois",
//     lastName: "Gracious",
//     age:22,
//     greet: function() {
//         console.log("Hello, my name is" + this.firstName + this.lastName);
//     }
// };

// console.log(students)


let button = document.getElementById('submit-btn');
console.log(button);