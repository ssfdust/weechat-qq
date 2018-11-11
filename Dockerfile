FROM sjdy521/mojo-webqq

COPY qq.perl /root/qq.perl

CMD ["perl", "/root/qq.perl"]
