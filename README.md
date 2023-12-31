# TS REACT VITE

A Simple Vite Project

- Vite
- React
- Typescript
- Eslint (airbnb)
- Prettier
- Husky precommit scripts
- Jest and testing-library
- Docker

## How to use

- ### With npm

  ```bash
  npm i
  npm run start

  ```

- ### With docker

  - #### For dev mode

    ```bash
    docker build -t tsrv-dev -f ./Dockerfile.dev .
    docker run -d -p 5173:5173 -v ./src:/app/src --name tsrv-dev-container tsrv-dev

    ```

  - #### For production mode

    ```bash
    docker build -t tsrv-prod .
    docker run -d -p 5173:80 --name tsrv-prod-container tsrv-prod

    ```

Open http://localhost:5173/ in your browser

## Available commands

| Script           | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| npm run start    | Runs the app in the development mode.                                       |
| npm run build    | Builds the app for production to the `dist` folder.                         |
| npm run preview  | Builds the app for production to the `dist` folder, and run locally server. |
| npm run lint     | Runs the Eslint and show code problems                                      |
| npm run lint:fix | Runs the Eslint and fix the code problems                                   |
| npm run format   | Runs the Prettier and fix code style                                        |
| npm run compile  | Runs the TS Compiling                                                       |
| npm run test     | Run the app tests.                                                          |
| npm run commit   | Open the CZ CLI to create a message to your commit.                         |
