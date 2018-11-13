FROM sjdy521/mojo-webqq
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
RUN localedef --quiet -c -i en_US -f UTF-8 en_US.UTF-8 

COPY qq.perl /root/qq.perl

CMD ["perl", "/root/qq.perl"]
