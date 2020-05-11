## Simple Node.js App

This is a simple Node.js app to illustrate how to handle secrets in a CI/CD pipeline using CircleCI.

### Prerequisites
This lesson assumes the following are already installed.

1. Git
2. Node
3. Yarn
4. Docker
5. Curl

### Getting Started

To get started, clone the app as follows:

```bash
git clone https://github.com/Allan690/SimpleNodeApp.git
```

Then move into the project directory and install the dependencies as follows:

```bash
yarn install
```

To start the app, run the following command:

```bash
yarn start
```

The app should start on port 5000.

To test that the app works, you can make the following curl command:

```bash
curl --request GET --url http://localhost:5000
```

You should get the following response:

```console
{"message":"Welcome to our API"}%
```

To build the app using Docker, run the following command replacing the  `username` part with your docker hub username :

```bash
docker build -t username/simplenodeapp:v1
```

You can then run the docker image as a container as follows:

```bash
docker run --name myapp --publish 5000:5000 --detach  allan069/samplenodeapp:0.1
```

To test that the container runs correctly, make the same curl command as made previously, you should receive a similar response

```bash
$ curl --request GET --url http://localhost:5000
{"message":"Welcome to our API"}%
```
