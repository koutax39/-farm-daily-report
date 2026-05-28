# Firebase共有保存の設定

このアプリは、`index.html` の `FIREBASE_CONFIG` にFirebaseのWebアプリ設定を入れると、Firestoreで共有保存できます。

## 1. Firebaseプロジェクトを作る

1. Firebase Consoleでプロジェクトを作成する
2. Webアプリを追加する
3. 表示された `firebaseConfig` の値を控える

## 2. Firestoreを作る

1. Firestore Databaseを作成する
2. ルールに `firestore.rules` の内容を貼り付ける
3. 公開する

## 3. アプリに設定を入れる

`index.html` のこの部分に、Firebase Consoleで表示された値を入れます。

```js
const FIREBASE_CONFIG = {
  apiKey: "",
  authDomain: "",
  projectId: "",
  storageBucket: "",
  messagingSenderId: "",
  appId: ""
};
```

設定後にGitHubへpushすると、GitHub Pagesで開いた全員が同じ日報データを共有できます。

## 注意

この設定はログインなしで全員共有するため、URLとFirebase情報を知っている人は読み書きできます。
