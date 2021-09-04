# Notes

This was an experiment of TDD with Rockstar. 

We have: 
- one source file which is game-of-life.rock
- `.rock.in` files which represent test cases
- `.rock.out` files which represent expections like and approval test
- symlink `.rock` files to the original source to allow multiple cases for 1 program


# Run tests for instant feedback

```shell
while test 1 -eq 1 ; do find . -type f -name "*.rock*" | entr -c -d docker run --rm -v $(pwd):/files benoitj/rocky test -vv -w /files/correct;done
```

# Run application

```shell
docker run -it --rm -v $(pwd):/files benoitj/rocky /files/correct/static-universe.rock
```

