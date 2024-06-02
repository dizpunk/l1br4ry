# [Python Programming Language](https://www.python.org/)
Simple but fairly comprehensive cheatsheet of all main python language features and syntax.

## Comments
```
# Single line comment
```
```
""" Multiline strings, often used
    as documentation.
"""
```

## Variables
There are no declarations, only assignments.
```
var = 5
var  # => 5
```

## Datatypes
__Numbers__
```
3
3.23
52.3E-4
```

__Boolean__
```
True
False
```

__Strings__ (immutable)
```
"This is a string."
'This is also a string.'
r"Newlines are indicated by \n" (raw string, no special processing )
f"She said her name is {name}." (formatted string, name is a variable)
```

__None__ (is an object)
```
None
```

## Data Structures
__Lists__ - Hold an ordered and changeable collection of items. Lists allow duplicate values.
```
list = []
list = ["A", 5, 6, True]
```

Get length.
```
len(list)
```

Check for existence.
```
1 in list  # => True
```

Access a list like any array.
```
list[0]
list[-1] (last element)
```

Get index of first matching item.
```
list.index(value)
```

Insert, append and pop.
```
list.insert(index, value)
list.append(3)    # list is now [1, 2, 4, 3]
list.pop()        # => 3 list is now [1, 2, 4]
```

Slice syntax.
```
list[start:end:step]
list[2:]
list[:3]
list[1:3]
list[::2]
```

Add lists.
```
list + other_list
```

Remove element.
```
del list[index]
```

Remove first occurrence of a value.
```
list.remove(value)
```

__Tuples__ -  Hold an ordered and immutable collection of items.
```
tuple = (1, 2, 3)
tup[0]      # => 1
tup[0] = 3  # Raises a TypeError
```

Most of the list operations are valid for tuples too


__Dictionaries__ - Store keys to values mappings. Dictionary items are ordered, changeable and does not allow duplicates.
```
dictionary = {}
dictionary = {"one": 1, "two": 2, "three": 3}
```

Keys for dictionaries have to be immutable types.
Immutable types include ints, floats, strings, tuples.

Look up values using corresponding key.
```
dictionary["one"]       # => 1
dictionary.get("one")   # => 1
```

Get all keys / values.
```
list(dictionary.keys())  # => ["one", "two", "three"]
list(dictionary.values())  # => [1, 2, 3]
```

Check for existence of keys.
```
"one" in dictionary  # => True
1 in dictionary      # => False
```

Adding an element.
```
dictionary["four"] = 4
dictionary.update({"four":4})
```

Remove keys.
```
del dictionary["one"]
```

__Sets__ - Hold an unordered, unchangeable collection of items. Sets do not allow duplicate values.
```
set = set()
set = {1, 2, 2, 3, 3, 4}  # some_set is now {1, 2, 3, 4}
```

Elements of a set have to be immutable.

Add items.
```
set.add(5)  # set is now {1, 2, 3, 4, 5}
set.add(5)  # remains as before {1, 2, 3, 4, 5}
```

Intersection (__&__), union (__|__), difference (__-__), symmetric difference (__^__), superset.
```
other_set = {3, 4, 5, 6}
set & other_set  # => {3, 4, 5}

filled_set | other_set  # => {1, 2, 3, 4, 5, 6}

{1, 2, 3, 4} - {2, 3, 5}  # => {1, 4}

{1, 2, 3, 4} ^ {2, 3, 5}  # => {1, 4, 5}

{1, 2} >= {1, 2, 3} # => False
{1, 2} <= {1, 2, 3} # => True
```

Check for existence.
```
2 in set   # => True
10 in set  # => False
```

## Operators
__Mathematical__ operators are straightforward.
```
1 + 1   # => 2
8 - 1   # => 7
10 * 2  # => 20
35 / 5  # => 7.0
```

__Integer division__ rounds down both positive and negative numbers.
```
5 // 3       # => 1
-5 // 3      # => -2
5.0 // 3.0   # => 1.0
-5.0 // 3.0  # => -2.0
```

The result of __division__ is always a float.
```
10.0 / 3  # => 3.3333333333333335
```

__Modulo__ operator.
```
7 % 3   # => 1
```

__Exponentiation__ operator.
```
2**3  # => 8
```

__Boolean__ operators.
```
not False  # => True
not True   # => False
False or True   # => True
True and False  # => False
```

__Comparison__ operators look at the numerical value of booleans (True and False are actually 1 and 0).
```
0 == False  # => True
2 > True    # => True
```

None, 0, and empty strings/lists/dicts/tuples/sets all evaluate to False, all other values are True.
```
bool(0)     # => False
bool("")    # => False
bool([])    # => False
bool(None)     # => False
```

__Equality__, __inequality__ and __comparisons__ operators.
```
1 == 1  # => True
2 == 1  # => False
1 != 1  # => False
2 != 1  # => True
1 < 10  # => True
1 > 10  # => False
2 <= 2  # => True
2 >= 2  # => True
```

"__is__" checks if two variables refer to the same object, but "__==__" checks if the objects have the same values.
```
a = [1, 2, 3, 4]
b = a
b is a            # => True
b == a            # => True
b = [1, 2, 3, 4]
b is a            # => False
b == a            # => True
```

## Control Flow
__if__ statement.
```
if var > 10:

    # do something

elif var < 10:

    # do something

else:

    # do something
```

__For__ loops.
```
# range(lower, upper, step), where upper bound is excluded
for i in range(4):
    print(i)

for i in range(4, 8): #
    print(i)

for i in range(4, 8, 2):
    print(i)


# iterate over an iterable object (an iterable is an object that can be treated as a sequence).
for animal in ["dog", "cat", "mouse"]:
    print(f"{animal} is a mammal")

animals = ["dog", "cat", "mouse"]
for i, value in enumerate(animals):
    print(i, value)
```

__While__ loops.
```
x = 0
while x < 4:
    print(x)
    x += 1
```

__try/except__ blocks.
```
try:

    # try something
    raise IndexError("This is an index error")

except IndexError as error:

    # handle one or more exceptions
    print(f"Oh no: {error}")

except (TypeError, NameError):

    pass

else:

    # run when no exceptions is raised in try
    print("All good!")

finally:

    # always execute anyway
    print("...anyway!")
```

__with__ statement.
```
with open("file.txt") as file:
    for line in file:
        print(line)
```

## Functions
Create a new __function__.
```
def add(x, y):
    return x + y
```

Calling functions with __parameters__ or __keyword arguments__.
```
add(5, 7)      # =>  12
add(y=7, x=5)  # =>  12
```

Define a function that take a variable number of __positional arguments__ (stored in a tuple).
```
def func(*args):
    return args

func(1, 2, 3)  # => (1, 2, 3)
```

You can define functions that take a variable number of __keyword arguments__ (stored in a dictionary).
```
def func(**kwargs):
    return kwargs

func(english="eng", italian="ita")  # => {"english": "eng", "italian": "ita"}
```

Both can be used at once.
```
def func(*args, **kwargs):
    print(args)
    print(kwargs)

func(1, 2, a=3, b=4) # => (1, 2)
                          {"a": 3, "b": 4}
```

It's possible to return multiple values (returned values are stored in a tuple).
```
def func(x, y):
    return y, x

func("a", "b") # => ('b', 'a')
```

Global and local __scope__.
```
x = 5

def set_local(num):
    # local scope
    x = num
    print(x)

def set_global(num):
    # global refers to global variable
    global x
    print(x)
    x = num
    print(x)

set_local(10)  # => 10
set_global(20) # => 5
                    20
```

__Lambdas__ (anonymous functions).
```
func = lambda a : a + 10

func(5)   # => 15
```

Return functions.
```
def parent_func(x):
    def child_func(y):
        return x + y
    return child_func

func = parent_func(10)
func(3)   # => 13
```

## Classes
Define a __class__.
```
class Person:

    # class variables shared by all instances
    species = "H. sapiens"

    # initializer method (when a class defines an __init__() method, class instantiation automatically invokes __init__() for the newly created class instance)
    def __init__(self, name, surname, age):
        # instance variables unique to each instance
        self.age = age
        self.name = name
        self.surname = surname

    # an instance method (all methods take "self" as the first argument)
    def greet(self):
        print(f"Hello, I am {self.name} {self.surname}.")
```

Define __inheritance__.
```
class Engineer(Person):

    # child's __init__() function overrides the inheritance of the parent's __init__() function so it's necessary to add a call to the parent's __init__().

    def __init__(self, name, surname, age, job, pay):

        # call to parent initializer
        Person.__init__(self, name, surname, age)
        # or
        super().__init__(name, surname, age)

        self.job = job
        self.pay = pay

    def brag_about_job(self):
        print(f"Currently working as a {self.job}")

    def brag_about_pay(self):
        print(f"I'm being paied around {self.pay} a year")
```

## Modules
__\_\_name\_\___ checks makes sure the code is only executed when the module is the main program.
```
if __name__ == '__main__':
    # execution
```

__Import__ modules.
```
import math

math.pow(2, 3)  # => 8.0
```

Import __specific functions__ from a module.
```
from math import pow

pow(2, 3)  # => 8.0
```

Import __all functions__ from a module (not recommended).
```
from math import *

pow(2, 3)  # => 8.0
```

__Customize__ module names.
```
import math as m

m.pow(2, 3)  # => 8.0
```

Find which functions and attributes are defined in a module.
```
import math
dir(math)
```
