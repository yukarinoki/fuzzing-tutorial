FROM ubuntu:16.04

USER root
RUN RUN apt-get update && apt-get install -y git
RUN  git clone https://github.com/google/fuzzing.git fuzzing
RUN  git clone https://github.com/google/fuzzer-test-suite.git FTS
RUN ./fuzzing/tutorial/libFuzzer/install-deps.sh
RUN ./fuzzing/tutorial/libFuzzer/install-clang.sh 