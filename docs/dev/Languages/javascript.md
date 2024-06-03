# [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
Simple but fairly comprehensive cheatsheet of main javascript syntax and features.

## Variables Initialization
```
let a = 5;
const b = "Hello";
```

## Data Types
```
let string      = "Hello"
let number      = 123
let floatNumber = 3.14              # same type as number, difference only in the assignment
let boolean     = true, false
let array       = [1, 2, 3]
let object      = { key: "value" }
let notAssigned = Undefined         # declared but has not yet been assigned a value
let nullvalue   = Null              # representation of no value, explicitly assigned
```

## Arrays

#### Declaration and Initialization
```
let arr = [1, 2, 3];
```

#### Common Methods
```
arr.push(4);        // [1, 2, 3, 4]
arr.pop();          // [1, 2, 3]
arr.shift();        // [2, 3]
arr.unshift(1);     // [1, 2, 3]
arr.indexOf(2);     // 1
arr.includes(3);    // true
```

#### Iteration
```
arr.forEach((item) => {
    console.log(item);
});

let newArr = arr.map((item) => item * 2);
```


## Objects

#### Declaration and Initialization
```
let obj = {
    key1: "value1",
    key2: 2,
    key3: function() {
        return "value3";
    }
};
```

#### Accessing Properties
```
console.log(obj.key1); // "value1"
console.log(obj["key2"]); // 2
```

#### Adding/Modifying Properties
```
obj.key4 = "value4";
obj["key5"] = 5;
```

#### Deleting Properties
```
delete obj.key1;
```


## Conditional Statements
```
if (condition) {
    // code block
} else if (anotherCondition) {
    // code block
} else {
    // code block
}
```


## Error Handling
```
try {
    // code that may throw an error
} catch (error) {
    console.error(error.message);
} finally {
    // code to be executed regardless of error
}
```


## Switch Statement
```
switch (expression) {
    case x:
        // code block
        break;
    case y:
        // code block
        break;
    default:
        // code block
}
```


## Loops
#### For
```
for (let i = 0; i < 5; i++) {
    console.log(i);
}
```

#### While
```
let i = 0;
while (i < 5) {
    console.log(i);
    i++;
}
```

#### Do-While
```
let i = 0;
do {
    console.log(i);
    i++;
} while (i < 5);
```


## Functions
```
# Function Declaration
function myFunction(a, b) {
    return a + b;
}

# Function Expression
const myFunction = function(a, b) {
    return a + b;
};

# Arrow Function
const myFunction = (a, b) => a + b;
```
