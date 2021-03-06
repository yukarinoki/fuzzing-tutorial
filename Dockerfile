FROM ubuntu:16.04

USER root
RUN true "replace" 
RUN apt-get update && apt-get install -y  apt-utils git sudo curl
WORKDIR /workspace/fuzzing-tutorial
RUN git clone https://github.com/google/fuzzing.git fuzzing
RUN git clone https://github.com/google/fuzzer-test-suite.git FTS
RUN echo $PATH > echotest.txt
RUN . ./fuzzing/tutorial/libFuzzer/install-deps.sh
RUN . ./fuzzing/tutorial/libFuzzer/install-clang.sh
WORKDIR /workspace/init
