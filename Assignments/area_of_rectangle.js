// create a function to calculate the area of a rectangle

function calculateArea (width, height) {
    const area = width * height;
    return area;
}

const width = 5;
const height = 10;

const rectangleArea = calculateArea(width, height);
console.log ("The area of the rectangle is:", rectangleArea);