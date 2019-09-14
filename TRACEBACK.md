# Traceback

> This file will help you retrace the workflow to generate Fira Source Mono.
>
> Setup used:
> - Windows 10
> - [scoop](https://scoop.sh/)
> - [Git Bash](https://git-scm.com/downloads)

Install versions bucket to download Python 2.7

```bash
scoop bucket add versions
scoop install python27
```

Launch a `bash` terminal and install `pip`.

```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
```

> You might get some warnings about the support for Python 2.7 being phased out.

Install `fonttools 3.x` (required by `pyftfeatfreeze`).

```bash
pip install fonttools==3.44.0
```

Install `future` (required by `pyftfeatfreeze`).

```bash
pip install future
```

Download [pyftfeatfreeze](https://raw.githubusercontent.com/twardoch/fonttools-utils/master/pyftfeatfreeze/pyftfeatfreeze.py) in the current directory.

```bash
curl https://raw.githubusercontent.com/twardoch/fonttools-utils/master/pyftfeatfreeze/pyftfeatfreeze.py -o pyftfeatfreeze.py
```

[Download FiraCode](https://github.com/tonsky/FiraCode/releases/tag/2) and copy the `ttf` files in the current directory.

Run `build.sh`.

```bash
source build.sh
```

> Edit `build.sh` to change stylistic sets, if needed.

Rebuilt fonts will be dumped in `dist` directory.