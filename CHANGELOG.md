<hr>

### Sat Mar 23 17:02:08 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `0cbfda51b3d41abf6274a5dba6146a451b62b06c`


Time spent: at this point, who cares.

[Update]
- based on the previous commit, you can tell I've failed.
- the code was supposed to look like this:

```go
func IndexHandler(w http.ResponseWriter, r *http.Request) {
	tmpl := template.Must(template.ParseFiles("index.html"))
	mu.Lock()
	tmpl.Execute(w, offerings)
	mu.Unlock()
}
```

- if the above code is not formate for the go language then I've failed again
- but at this point I dont care, enough is enough.


<hr>

### Sat Mar 23 16:55:39 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `96e8173d38f5ff5b7ab7072226cb14244fc8fded`


Time spent: like... a lot!

[Update]:

- this will be a test to see if there's anything bellow this line. If there isn't, then we're good!

#Uncomment this if you want to add code snippets to the commit message
#```
#```


<hr>

### Sat Mar 23 16:25:12 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `eb61000821ffb1dca1815ec8fcfa702ff1519f08`

```
Time spent: Irrelevant

[Added]:

- Added the cacp.sh script to automate adding, commit, push and changelog generation

```
