

Generic python script with cli user prompt

```python
if __name__ == "__main__":

    if len(sys.argv) != 3:
		# user hint
        print("Usage: python this_script.py <value_foo> <value_bar>")
        sys.exit(1)

    #arg vals
    value_foo = sys.argv[1]
    value_bar = sys.argv[2]

    my_method(value_foo, value_bar)
```