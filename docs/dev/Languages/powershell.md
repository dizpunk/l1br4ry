# [PowerShell](https://learn.microsoft.com/en-us/powershell/)
Simple but fairly comprehensive cheatsheet of main powershell features and syntax.

## Comments
```powershell
# Single line comment
# This is a comment

<#
Multi-line comment
This is another comment
#>
```

## Variables
```
# Scalar Variables
$number = 10
$bool = $true
$string = "Hello, PowerShell"

# Arrays
$array = @(1, 2, 3, 4, 5)

#Hash Table
$hashTable = @{ "Key1" = "Value1"; "Key2" = "Value2" }

# Type and casting
[int]$intVariable = 10
[string]$stringVariable = "Explicit Type"

# Scopes
$Global:var = "Global Variable"     # Accessible from anywhere in the script or session
$Local:var = "Local Variable"       # Accessible only within the current function or script
$Script:var = "Script Variable"     # Accessible throughout the script
$Private:var = "Private Variable"   # Accessible only within the current script or function, not in child scopes
```

## Conditional Statements
```
# If-else statement
if ($variable -eq "Hello") {
    Write-Output "Greeting"
} elseif ($variable -eq "Goodbye") {
    Write-Output "Farewell"
} else {
    Write-Output "Unknown"
}

# Switch statement
switch ($variable) {
    "Hello" {
        Write-Output "Greeting"
    }
    "Goodbye" {
        Write-Output "Farewell"
    }
    default {
        Write-Output "Unknown"
    }
}
```

## Loops
```
# For loop
for ($i = 0; $i -lt 10; $i++) {
    Write-Output $i
}

# While loop
$i = 0
while ($i -lt 10) {
    Write-Output $i
    $i++
}

# Do-While loop
$i = 0
do {
    Write-Output $i
    $i++
} while ($i -lt 10)

# ForEach loop
$array = @(1, 2, 3, 4, 5)
foreach ($item in $array) {
    Write-Output $item
}
```

## Functions
```
# Defines a function that returns a greeting message.
function Get-Greeting {
    param ($name = "World")
    return "Hello, $name!"
}

# Calls the Get-Greeting function with the parameter "Ale".
Get-Greeting -name "Ale"
```

## Error Handling
```
# Try-Catch block
try {
    $result = 1 / 0
} catch {
    Write-Output "An error occurred: $_"
}
```

## Modules
```
# Imports the module named ModuleName.
Import-Module -Name ModuleName

# Lists all available modules.
Get-Module -ListAvailable

# Removes the module named ModuleName.
Remove-Module -Name ModuleName
```

## Pipelines
```
# Pass output from one cmdlet to another
Get-Process | Where-Object { $_.CPU -gt 100 } | Sort-Object -Property CPU -Descending
```

## Cmdlets
"command-lets," are specialized commands in the PowerShell environment that perform a single function.

The basic syntax of a cmdlet is:
```
<Verb-Noun> [-Parameter <Value>] [<CommonParameters>]
```
- Verb-Noun: Cmdlets use a standardized naming convention of Verb-Noun to describe their action. The verb specifies the action (like Get, Set, New, Remove), and the noun specifies the object (like Process, Service, Item, User).
- Parameters: Cmdlets can have parameters that modify their behavior. These parameters are specified after the cmdlet name.
- CommonParameters: These are parameters available to all cmdlets, like -Verbose, -Debug, -ErrorAction, -ErrorVariable, etc.
