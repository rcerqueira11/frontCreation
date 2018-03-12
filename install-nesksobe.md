
## To install the grpc

1. git clone https://github.com/grpc/grpc.git

2. install this depencencies
  ```bash
  [sudo] apt-get install build-essential autoconf libtool pkg-config
  [sudo] apt-get install libgflags-dev libgtest-dev
  [sudo] apt-get install clang libc++-dev
  ```

3. install the submodules with `git submodule update --init`

4. enter the folder `cd grpc/third_party/protobuf`

5. return to root `grpc/` 

6. run `make grpc_cli`

7. to run the tool go to  `grpc/bins/opt` and run `./grpc_cli <params>`

## To install gradle

1. install [SDKMAN](http://sdkman.io/)
  - running on the terminal `curl -s "https://get.sdkman.io" | bash`
  - restore the `./profile` or `./bash_rc` file with source

2. run `sdk install gradle 4.5.1` 


## To run the project
1. create the local databases `docker-compose -p neksosh up -d`

     
2. inside the project folder run `./gradlew clean build` r `./gradlew clean build -x test` if something goes wrong.


3. create a file to have the aws creadentials in `touch ~/.aws/credentials` and then set the credentials

```bash
  [default]
     aws_access_key_id = ""
     aws_secret_access_key =""
```

4. Run the server grpc:
  - in `neksosh-be/` run  `java -jar neksosh-be-server/build/libs/application.jar`
  - or within the IntelliJ run the java class `GrpcServer`

5. run the main dashboard

- `java -jar neksosh-be-dashboard-admin/build/libs/dashboard-admin.jar`
