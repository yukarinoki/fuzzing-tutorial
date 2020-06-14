FROM ubuntu:16.04

USER root
RUN apt-get update && apt-get install -y git

USER gitpod
RUN bash - c ". ~/.nvm/nvm-lazy.sh && git clone https://github.com/google/fuzzing.git fuzzing && git clone https://github.com/google/fuzzer-test-suite.git FTS"
RUN sh ./fuzzing/tutorial/libFuzzer/install-deps.sh
RUN sh ./fuzzing/tutorial/libFuzzer/install-clang.sh