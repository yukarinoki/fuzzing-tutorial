FROM ubuntu:16.04

USER root
RUN apt-get --yes install git
RUN ./fuzzing/tutorial/libFuzzer/install-deps.sh
RUN ./fuzzing/tutorial/libFuzzer/install-clang.sh 