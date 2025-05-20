-----

# Tasklist アプリケーション

Tasklist は、シンプルなタスク管理を行うための Web アプリケーションです。タスクの**作成、表示、編集、削除**といった基本的な CRUD (Create, Read, Update, Delete) 操作をブラウザ上から行えます。

-----

## 主な機能

  * **タスク一覧表示**: 登録されているすべてのタスクを一覧で表示します。
  * **タスク詳細表示**: 各タスクの詳細な内容（ID、仕事内容、作成日時、更新日時）を表示します。
  * **タスク新規作成**: 新しいタスクを登録します。
  * **タスク編集**: 既存のタスクの内容を更新します。
  * **タスク削除**: 登録済みのタスクを削除します。

## 使用技術

### フロントエンド:

  * **JSP (JavaServer Pages)**: ユーザーインターフェース (UI) のレンダリングに使用。
  * **JSTL (Jakarta Standard Tag Library)**: JSP 内でのロジック記述を簡素化。

### バックエンド:

  * **Jakarta Servlet**: HTTP リクエストの処理とビジネスロジックの実行。
  * **Hibernate (JPA 実装)**: オブジェクトリレーショナルマッピング (ORM) によるデータベースアクセス。
  * **Jakarta Persistence API (JPA)**: データベースとの対話を行うための標準 Java API。

### データベース:

  * **MySQL (8.0.28)**

### ビルドツール:

  * **Maven**

### Web サーバー:

  * **Apache Tomcat 10.1.23**: アプリケーションのデプロイと実行。


## 動作環境

このアプリケーションをローカルで動作させるためには、以下の環境が必要です。

  * **Java Development Kit (JDK) 17 以降**: Java アプリケーションのコンパイルと実行に必要です。
  * **Apache Maven 3.x 以降**: プロジェクトのビルドに必要です。
  * **Apache Tomcat 10.1.x**: Web アプリケーションサーバーです。
  * **MySQL 8.0.x 以降**: データベースサーバーです。



## セットアップ手順

1.  **リポジトリのクローン:**

    ```bash
    git clone https://github.com/chokkura/tasklist.git
    cd tasklist
    ```

2.  **MySQL データベースのセットアップ:**

      * MySQL サーバーを起動し、アプリケーションで使用するデータベースを作成します。

        ```sql
        CREATE DATABASE IF NOT EXISTS tasklist_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
        ```

      * `src/main/resources/META-INF/persistence.xml` ファイルを開き、データベースの接続情報（URL, ユーザー名, パスワード）を環境に合わせて設定します。

3.  **Maven プロジェクトのビルド:**

    プロジェクトのルートディレクトリで以下のコマンドを実行し、WAR ファイルをビルドします。

    ```bash
    mvn clean package
    ```

    ビルドが成功すると、`target/tasklist-0.0.1-SNAPSHOT.war` のような WAR ファイルが生成されます。

4.  **Tomcat へのデプロイ:**

      * Apache Tomcat 10.1.23 を起動します。
      * 生成された `tasklist-0.0.1-SNAPSHOT.war` ファイルを Tomcat の `webapps` ディレクトリに配置します。
      * Tomcat が自動的にアプリケーションをデプロイします。デプロイが完了すると、`webapps` ディレクトリ内に `tasklist-0.0.1-SNAPSHOT` という名前のフォルダが作成されます。

5.  **アプリケーションへのアクセス:**

    Web ブラウザを開き、以下の URL にアクセスします。

    ```
    http://localhost:8080/tasklist-0.0.1-SNAPSHOT/index
    ```

    (Tomcat のポートが 8080 でない場合は適宜変更してください。)



## 開発者向け情報

  * **コントローラー**: `src/main/java/controllers/` に各機能のサーブレットが配置されています。
  * **モデル**: `src/main/java/models/Task.java` がタスクエンティティの定義です。
  * **ビュー**: `src/main/webapp/WEB-INF/views/tasks/` および `src/main/webapp/WEB-INF/views/layout/` に JSP ファイルが配置されています。

