# Correct Git author

Did you change the GitHub e-mail? Are you missing yourself as an author on some commits?

This repository shows you an automated way of https://help.github.com/en/articles/changing-author-info tutorial.

### List your repositories

The Python script `list-all.py` will show you your list of repositories.

Replace my username with your username:

```sh
$ sed -i 's:REPLACE:yourusername:g' list-all.py
```

Run the script:

```sh
$ chmod a+x list-all.py
$ ./list-all.py > list.txt
```

Check the list:

```sh
$ cat list.txt
```

#### Correct the author in all your repositories

If you have the `list.txt` file ready, just run the `run.sh` bash script:

```sh
$ chmod a+x run.sh
$ ./run.sh
```

**Note:** this will perform changes on the repository history and will use _push force_, be aware of possible unexpected results, be careful if you don't know what you are doing.
