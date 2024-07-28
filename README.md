# Python

## 環境構築

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