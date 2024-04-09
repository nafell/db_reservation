# ■ DB作成

## mysqlの設定
mysql上で以下のコマンドを実行
1. ユーザ作成
```sql
CREATE USER 'prisma-reservation'@'localhost' IDENTIFIED BY 'password12345678';
```
2. 権限設定
```sql
GRANT ALL ON *.* TO 'prisma-reservation'@'localhost';
```

## 本ツール導入・実行
ターミナルで以下のコマンドを実行  

1. ダウンロード
```bash
git clone https://github.com/nafell/db_reservation
```

2. 依存関係をインストール
```bash
npm i
```

3. db作成実行
```bash
npx prisma migrate dev --name init
```

## 後片付け
mysql上で以下のコマンドを実行
```sql
REVOKE ALL ON *.* FROM 'prisma-reservation'@'localhost';
```

# ■ Prisma Studio(GUI)の使用
1. mysql権限設定(初回のみ)
```sql
GRANT ALL ON db_reservation.* TO 'prisma-reservation'@'localhost';
```
2. ツール起動
```bash
npx prisma studio
```

# ■ すでにDB作成済みの人は
1. ユーザ作成
```sql
CREATE USER 'prisma-reservation'@'localhost' IDENTIFIED BY 'password12345678';
```
2. mysql権限設定
```sql
GRANT ALL ON db_reservation.* TO 'prisma-reservation'@'localhost';
```
3. 本ツールのダウンロード
```bash
git clone https://github.com/nafell/db_reservation
```
4. 依存関係をインストール
```bash
npm i
```
↑↑ ここまでは初回のみ実行 ↑↑  

5. ツール起動
```bash
npx prisma studio
```