FROM jenkins/jenkins

USER root

RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
	apt update && \
	apt install -y python3 python3-distutils python3-apt && \
	python3 get-pip.py && \
	pip install ansible --upgrade

USER jenkins
