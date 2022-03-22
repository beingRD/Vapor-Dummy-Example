# Getting started with Vapor
![image](https://user-images.githubusercontent.com/39448332/159543057-36c27fd8-8fcb-4f15-91f1-83ab62f0a803.png)

A small project to understand the basic concepts of Vapor.

Run Command on Terminal

1. To create a new project
```
$dev vapor new project_name -n
$dev vapor --help
```

2. To create a new project with Fluent
```
$dev vapor new project_name
$dev Would you like to use Fluent? (--fluent/--no-fluent) <y/n> y
$dev fluent: Yes
$dev db: Postgres (Recommended)
$dev Would you like to use Leaf? (--leaf/--no-leaf)
$dev y/n> n
$dev leaf: No
```

3. Install Brew (if you don't have it)
```
refer to this link to install: https://brew.sh/
```

4. To enable/disble services for Postgres
```
$dev brew services start postgresql
$dev brew services stop postgresql
$dev brew services restart postgresql
```
5. Create a DB via Postgres 
assuming user name as todo_user and database name as todo_db
```
$dev createuser -P todo_user
$dev createdb -O todo_user todo_db
```

6. Open the package
assuming user name as todo_user and database name as todo_db
```
$dev cd project_name
$dev open Package.swift
```

7. To check the active routes
```
$dev vapor run routes
```

8. To migrate the database
```
$dev vapor run migrate
```


