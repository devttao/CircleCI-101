FROM centos:7

# CircleCI CLI
RUN curl -fLSs https://circle.ci/cli | bash \
    && yum clean all

WORKDIR /code
CMD ["bash", "--login"]
