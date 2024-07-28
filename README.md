# Python

## 環境構築
`rye`+ `uv` + `ruff`を用いてpythonの環境を構築する


### `init.sh` に権限を付与
```sh
chmod +x init.sh
```

###  `init.sh` を実行
```sh
./init.sh
```

### パッケージの追加
```
rye add xxx
```

### 仮想環境の開始
`init.sh` を実行すると自動的に仮想環境がアクティベートされます。一度終了したときは再度以下のコマンドでアクティベートしてください
```sh
. .venv/bin/activate
```

### 仮想環境の終了
```sh
deactivate
```

### リンティング
```sh
rye run lint
```
- `lint:ruff`: `ruff` を使用してコードのチェックを行います。
- `lint:ruff_format`: `ruff` を使用してコードのフォーマットチェックを行います。
- `lint:mypy`: `mypy` を使用して型チェックを行います。

### フォーマット
```sh
rye run format
```
- `format:ruff`: `ruff` を使用してコードのフォーマットを行います。
- `format:ruff_check`: `ruff` を使用してフォーマット後のコードチェックを行います。