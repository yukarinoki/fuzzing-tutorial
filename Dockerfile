FROM ubuntu:16.04

USER root
RUN true "replace" 
RUN apt-get update && apt-get install -y git
WORKDIR /workspace/fuzzing-tutorial
RUN git clone https://github.com/google/fuzzing.git fuzzing
RUN git clone https://github.com/google/fuzzer-test-suite.git FTS
RUN echo $PATH > echotest.txt
RUN . ./fuzzing/tutorial/libFuzzer/install-deps.sh

# USER gitpot
# RUN sh ./fuzzing/tutorial/libFuzzer/install-deps.sh
# RUN sh ./fuzzing/tutorial/libFuzzer/install-clang.sh
WORKDIR /workspace/init