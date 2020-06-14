FROM ubuntu:16.04

USER root
RUN ./fuzzing/tutorial/libFuzzer/install-deps.sh
RUN ./fuzzing/tutorial/libFuzzer/install-clang.sh 