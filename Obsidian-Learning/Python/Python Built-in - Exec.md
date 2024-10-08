## `exec(func(), locals, globals)`

**`globals`:**
- **Purpose:** Specifies a dictionary containing the global variables that should be accessible within the executed code.
- **Use:**
    - By default, the `exec` function uses the current global namespace.
    - To modify the global namespace used for execution, provide a custom dictionary to the `globals` argument.
    - This allows you to define or redefine global variables before executing the code, making them accessible within the executed context.

**Example:**

Python

```
my_global = 42
code_to_execute = "print(my_global)"

# Use the default global namespace
exec(code_to_execute)  # Output: 42

# Modify the global namespace
new_globals = {"my_global": 100}
exec(code_to_execute, new_globals)  # Output: 100
```


**`locals`:**
- **Purpose:** Specifies a dictionary containing the local variables that should be accessible within the executed code.
- **Use:**
    - By default, the `exec` function creates a new local namespace for the executed code.
    - To modify the local namespace, provide a custom dictionary to the `locals` argument.
    - This allows you to define or redefine local variables before executing the code, making them accessible within the executed context.

**Example:**

Python

```
code_to_execute = "print(local_var)"

# Use the default local namespace
exec(code_to_execute)  # Raises NameError: name 'local_var' is not defined

# Modify the local namespace
new_locals = {"local_var": 50}
exec(code_to_execute, globals(), new_locals)  # Output: 50
```


**Key points:**

- Both `globals` and `locals` are optional arguments. If not provided, the default namespaces are used.
- The `globals` dictionary takes precedence over the `locals` dictionary. If a variable is defined in both, the value from `globals` is used.
- The `exec` function returns `None`.
- It's generally recommended to use the `eval` function for evaluating expressions, as it can return the result of the evaluation. However, be aware of the security implications of using `eval`, as it can execute arbitrary code.

By understanding the use of `globals` and `locals` in `exec`, you can effectively control the execution environment and manipulate variables within the executed code.