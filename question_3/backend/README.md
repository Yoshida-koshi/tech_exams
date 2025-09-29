# 起動方法

1. `docker compose up`でサーバーを起動
2. `docker compose exec backend bash`でdockerコンテナに入る
3. dockerコンテナ内で`bin/rails db:create`でデータベースを作成する
4. dockerコンテナ内で`bin/rails db:migrate`でテーブルをデータベースに反映させる
5. http://localhost:3000 を踏んで以下の画像が表示されたら、OK

<img width="1265" height="829" alt="Image" src="https://github.com/user-attachments/assets/f15bfa9c-6cc1-457a-98db-b926f1eca602" />
