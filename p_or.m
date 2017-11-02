clear all;
close all;
p=[0 0 1 1;0 1 0 1];
t=[0 1 1 1];
net=newp([0 1;0 1],1);
y1=sim(net,p)
net.trainParam.epochs=25;
net=train(net,p,t);
y2=sim(net,p)
perf=mae(y2-t)