# eoscdt-docker

## Example

1. Create hello.cpp

  ```cpp
  #include <eosiolib/eosio.hpp>
  #include <eosiolib/print.hpp>

  using namespace eosio;

  class hello : public contract {
    public:
        using contract::contract;

        [[eosio::action]]
        void hi( name user ) {
           print( "Hello, ", user);
        }
  };

  EOSIO_DISPATCH( hello, (hi))

  ```

2. Build WASM

  ```
  docker run -it --rm --volume $PWD:$PWD --workdir $PWD yarencheng/eoscdt-docker:v1.5.0 \
    eosio-cpp -o hello.wasm hello.cpp --abigen
  ```

## CMake Example

1. use [example](/example)

2. Run docker container
   ```
   docker run -it --rm --volume $PWD:$PWD --workdir $PWD yarencheng/eoscdt-docker:v1.5.0
   ```
3. `cmake` in docker container
   ```
   mkdir example/build
   cd example/build/
   cmake ..
   make
   ```