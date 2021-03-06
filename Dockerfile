FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git python-dev python-setuptools python-pip -y
RUN git clone https://github.com/osrg/ryu.git
RUN cd ryu && pip install .
ENTRYPOINT ["ryu-manager", "ryu.app.simple_switch_13"]
