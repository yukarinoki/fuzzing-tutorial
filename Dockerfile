FROM ubuntu:16.04

USER root
RUN apt-get update && apt-get install -y git && git clone https://github.com/google/fuzzing.git fuzzing &&  git clone https://github.com/google/fuzzer-test-suite.git FTS && ./fuzzing/tutorial/libFuzzer/install-deps.sh && ./fuzzing/tutorial/libFuzzer/install-clang.sh 