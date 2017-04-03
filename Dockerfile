FROM ubuntu:14.04

#=======================
# Install utils
#=======================
COPY scripts/install-defaults.sh install-defaults.sh 
RUN ["/bin/bash", "install-defaults.sh"]


#=======================
# Install JDK7 
#=======================
COPY  scripts/install-java.sh install-java.sh
RUN ["/bin/bash", "install-java.sh"]
CMD ["echo","DONE"]