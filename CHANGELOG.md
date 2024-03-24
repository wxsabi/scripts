<hr>

### Sat Mar 23 21:02:06 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `e2c60ffb9b1d654606127e75635ed8fb0893823c`


[AUTOMATED]Update CHANGELOG.md



<hr>

### Sat Mar 23 21:02:05 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `ac16d583bc0536fed3bebd91cfe56699fd7d1855`


[Update]: Add a the main skeleton of the arch install script in bash format

Time spent: 1



<hr>

### Sat Mar 23 17:16:47 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `070c3f6dbae2812f7666c0196a71ef6d38e199e3`


[AUTOMATED]Update CHANGELOG.md



<hr>

### Sat Mar 23 17:16:46 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `b19d085200b52aa5620f468c176258d40ff96548`


[Update]: Formatting update to cacp.sh

Time spent: ???

- This is to test only how code looks
-here's some bash:
```bash
# Add all changes to staging
git add .

# Check for changes
if git status --porcelain | grep -q '^[MADRC\?\?]'
then
    echo "Found changes to the local repository"
else
    echo "No changes to commit"
    exit 0
fi
```

- here's some go:
```go
func IndexHandler(w http.ResponseWriter, r *http.Request) {
	tmpl := template.Must(template.ParseFiles("index.html"))
	mu.Lock()
	tmpl.Execute(w, offerings)
	mu.Unlock()
}
```
- Here's some c++:
```c++
#include <iostream>

// Function declaration
int add(int a, int b);

int main() {
    int num1 = 5;
    int num2 = 10;

    std::cout << "The sum of " << num1 << " and " << num2 << " is " << add(num1, num2) << std::endl;

    return 0;
}

// Function definition
int add(int a, int b) {
    return a + b;
}

```



<hr>

### Sat Mar 23 17:02:09 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `35663ac66391ee322e037bb706610a666edc8935`


[AUTOMATED]Update CHANGELOG.md



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

### Sat Mar 23 16:55:40 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `9343bc9e523e402de1569063c95dfab795eee1fc`


[AUTOMATED]Update CHANGELOG.md



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

### Sat Mar 23 16:25:13 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `82c441700510097f4ce3d4ae9d82efd5897566af`


[AUTOMATED]Update CHANGELOG.md



<hr>

### Sat Mar 23 16:25:12 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `eb61000821ffb1dca1815ec8fcfa702ff1519f08`


Time spent: Irrelevant

[Added]:

- Added the cacp.sh script to automate adding, commit, push and changelog generation



<hr>

### Thu Mar 21 03:37:23 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `005c8e546c92dd007c8075dc85e488a7287d6548`


adding first install script template



<hr>

### Thu Mar 21 03:00:49 2024 -0700
#### Author: Jay Cisneros <jaycisneros@jacm.io>
#### commit: `6396896974fd7017f4e693f2f8d44ca3a91ae0a0`


Adding instruction example



<hr>

### Wed Jan 24 00:12:48 2024 -0800
#### Author: wxsabi <35592749+wxsabi@users.noreply.github.com>
#### commit: `6c14b0d95eaf0e78e9b0a355094022ca87225b46`


Create freebsdfi

