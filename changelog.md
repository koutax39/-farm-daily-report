# 農業作業日報アプリ 変更履歴

## 2026-07-05

### 作業時間集計と休憩控除を追加

- アプリ起動時に今日の日付を表示するよう変更
- 作業時間計算に休憩控除を追加
  - 10:00〜10:15
  - 15:00〜15:15
- 出力タブに作業時間集計を追加
  - 全期間の累積
  - 選択週の累積
- 作業時間集計は作業者人数分を合計した延べ作業時間として計算
- Excel出力に `作業時間` と `延べ作業時間` の列を追加
- 使い方ページに作業時間集計と休憩控除の説明を追記

Commit: `ba4405c Add work time summaries with break deductions`

### プロセス保存用ドキュメントを追加

- `requirements.md` を追加
- `tasklist.md` を追加
- `changelog.md` を追加

## 2026-05-28

### 利用者向け説明ページを追加

- `usage_guide.html` を作成
- アプリの開き方、日報入力、管理、Excel出力、共有保存の注意点を記載

Commit: `ca7fb37 Add usage guide page`

### Firebaseプロジェクト設定を反映

- Firebase Webアプリ設定を `index.html` に反映
- Firestore共有保存を利用できる状態にした

Commit: `3d2831f Configure Firebase project`

### Firestore共有保存に対応

- Firebase未設定時は従来通り端末内保存
- Firebase設定時はFirestoreへ共有保存
- 作業記録、天気・気温、マスタデータを共有対象にした
- 管理タブに共有保存ステータスを追加
- 端末内データを共有保存へ移行するボタンを追加
- `firestore.rules` を追加
- `FIREBASE_SETUP.md` を追加

Commit: `df1991d Add shared Firestore storage support`

### 作業内容の複数選択に対応

- 作業内容を複数選択できるよう変更
- `tasks` 配列を保存データに追加
- 既存の `task` 単一値データも表示できるよう互換対応
- 収穫、追肥、消毒の追加入力欄表示を複数選択に対応
- Excel出力でも複数作業内容を表示

Commit: `4adb64f Allow multiple task selection`

### 初期アプリを作成

- `index.html` を作成
- 日報入力機能を実装
- 管理タブを実装
- Excel出力機能を実装
- ローカル保存に対応
- 起動補助用の `start_app.bat` と `open_direct.bat` を追加

Commit: `0b38f7a Initial farm daily report app`
