#!/usr/bin/env perl
use Mojo::Webqq;
my $client = Mojo::Webqq->new();
$client->load("ShowMsg");
$client->load("IRCShell",data=>{
    listen=>[ {host=>"0.0.0.0",port=>6667},], #可选，IRC服务器监听的地址+端口，默认0.0.0.0:6667
    load_friend => 1, #可选,是否初始为每个好友生成irc虚拟帐号并加入频道 #我的好友
    upload_api => 1,
});
$client->run();
