mode: user.commandline
-
install note:
    insert('npm install ')
note run dev:
    insert('npm run dev')
install yarn:   
    insert('yarn add ')
install yarn dev:   
    insert('yarn add  -D')
    edit.left()
    repeat(2)
install types:
    insert('@types/')
yarn run dev:
    insert('yarn run dev')
yarn start:
    insert("yarn start ")