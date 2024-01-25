function [XTrainavf,XTrainavl,XTrainavr,XTraini,XTrainii,XTrainiii,XTrainv1,XTrainv2,XTrainv3,XTrainv4,XTrainv5,XTrainv6,XValidavf,XValidavl,XValidavr,XValidi,XValidii,XValidiii,XValidv1,XValidv2,XValidv3,XValidv4,XValidv5,XValidv6,XTestavf,XTestavl,XTestavr,XTesti,XTestii,XTestiii,XTestv1,XTestv2,XTestv3,XTestv4,XTestv5,XTestv6,YTrain,YValid,YTest]=partitionData(augimdsavf,augimdsavl,augimdsavr,augimdsi,augimdsii,augimdsiii,augimdsv1,augimdsv2,augimdsv3,augimdsv4,augimdsv5,augimdsv6,TrainRatio,ValidRatio,numAll,labels);

indices=randperm(numAll,numAll);
TrainIdx=indices(1:round(numel(indices)*TrainRatio));
ValidIdx=indices(round(numel(indices)*TrainRatio)+1:round(numel(indices)*(TrainRatio+ValidRatio)));
TestIdx=indices(round(numel(indices)*(TrainRatio+ValidRatio))+1:end);

auimdsTrainaugimdsavf = partitionByIndex(augimdsavf,TrainIdx);
auimdsValidaugimdsavf = partitionByIndex(augimdsavf,ValidIdx);
auimdsTestaugimdsavf = partitionByIndex(augimdsavf,TestIdx);

auimdsTrainaugimdsavl = partitionByIndex(augimdsavl,TrainIdx);
auimdsValidaugimdsavl = partitionByIndex(augimdsavl,ValidIdx);
auimdsTestaugimdsavl = partitionByIndex(augimdsavl,TestIdx);

auimdsTrainaugimdsavr = partitionByIndex(augimdsavr,TrainIdx);
auimdsValidaugimdsavr = partitionByIndex(augimdsavr,ValidIdx);
auimdsTestaugimdsavr = partitionByIndex(augimdsavr,TestIdx);

auimdsTrainaugimdsi = partitionByIndex(augimdsi,TrainIdx);
auimdsValidaugimdsi = partitionByIndex(augimdsi,ValidIdx);
auimdsTestaugimdsi = partitionByIndex(augimdsi,TestIdx);


auimdsTrainaugimdsii = partitionByIndex(augimdsii,TrainIdx);
auimdsValidaugimdsii = partitionByIndex(augimdsii,ValidIdx);
auimdsTestaugimdsii = partitionByIndex(augimdsii,TestIdx);


auimdsTrainaugimdsiii = partitionByIndex(augimdsiii,TrainIdx);
auimdsValidaugimdsiii = partitionByIndex(augimdsiii,ValidIdx);
auimdsTestaugimdsiii = partitionByIndex(augimdsiii,TestIdx);


auimdsTrainaugimdsv1 = partitionByIndex(augimdsv1,TrainIdx);
auimdsValidaugimdsv1 = partitionByIndex(augimdsv1,ValidIdx);
auimdsTestaugimdsv1 = partitionByIndex(augimdsv1,TestIdx);


auimdsTrainaugimdsv2 = partitionByIndex(augimdsv2,TrainIdx);
auimdsValidaugimdsv2 = partitionByIndex(augimdsv2,ValidIdx);
auimdsTestaugimdsv2 = partitionByIndex(augimdsv2,TestIdx);


auimdsTrainaugimdsv3 = partitionByIndex(augimdsv3,TrainIdx);
auimdsValidaugimdsv3 = partitionByIndex(augimdsv3,ValidIdx);
auimdsTestaugimdsv3 = partitionByIndex(augimdsv3,TestIdx);


auimdsTrainaugimdsv4 = partitionByIndex(augimdsv4,TrainIdx);
auimdsValidaugimdsv4 = partitionByIndex(augimdsv4,ValidIdx);
auimdsTestaugimdsv4 = partitionByIndex(augimdsv4,TestIdx);


auimdsTrainaugimdsv5 = partitionByIndex(augimdsv5,TrainIdx);
auimdsValidaugimdsv5 = partitionByIndex(augimdsv5,ValidIdx);
auimdsTestaugimdsv5 = partitionByIndex(augimdsv5,TestIdx);


auimdsTrainaugimdsv6 = partitionByIndex(augimdsv6,TrainIdx);
auimdsValidaugimdsv6 = partitionByIndex(augimdsv6,ValidIdx);
auimdsTestaugimdsv6 = partitionByIndex(augimdsv6,TestIdx);



XTrainavf=readall(auimdsTrainaugimdsavf);
XTrainavf=cat(4,XTrainavf.input{:});
XValidavf=readall(auimdsValidaugimdsavf);
XValidavf=cat(4,XValidavf.input{:});
XTestavf=readall(auimdsTestaugimdsavf);
XTestavf=cat(4,XTestavf.input{:});

XTrainavl=readall(auimdsTrainaugimdsavl);
XTrainavl=cat(4,XTrainavl.input{:});
XValidavl=readall(auimdsValidaugimdsavl);
XValidavl=cat(4,XValidavl.input{:});
XTestavl=readall(auimdsTestaugimdsavl);
XTestavl=cat(4,XTestavl.input{:});

XTrainavr=readall(auimdsTrainaugimdsavr);
XTrainavr=cat(4,XTrainavr.input{:});
XValidavr=readall(auimdsValidaugimdsavr);
XValidavr=cat(4,XValidavr.input{:});
XTestavr=readall(auimdsTestaugimdsavr);
XTestavr=cat(4,XTestavr.input{:});

XTraini=readall(auimdsTrainaugimdsi);
XTraini=cat(4,XTraini.input{:});
XValidi=readall(auimdsValidaugimdsi);
XValidi=cat(4,XValidi.input{:});
XTesti=readall(auimdsTestaugimdsi);
XTesti=cat(4,XTesti.input{:});

XTrainii=readall(auimdsTrainaugimdsii);
XTrainii=cat(4,XTrainii.input{:});
XValidii=readall(auimdsValidaugimdsii);
XValidii=cat(4,XValidii.input{:});
XTestii=readall(auimdsTestaugimdsii);
XTestii=cat(4,XTestii.input{:});

XTrainiii=readall(auimdsTrainaugimdsiii);
XTrainiii=cat(4,XTrainiii.input{:});
XValidiii=readall(auimdsValidaugimdsiii);
XValidiii=cat(4,XValidiii.input{:});
XTestiii=readall(auimdsTestaugimdsiii);
XTestiii=cat(4,XTestiii.input{:});

XTrainv1=readall(auimdsTrainaugimdsv1);
XTrainv1=cat(4,XTrainv1.input{:});
XValidv1=readall(auimdsValidaugimdsv1);
XValidv1=cat(4,XValidv1.input{:});
XTestv1=readall(auimdsTestaugimdsv1);
XTestv1=cat(4,XTestv1.input{:});

XTrainv2=readall(auimdsTrainaugimdsv2);
XTrainv2=cat(4,XTrainv2.input{:});
XValidv2=readall(auimdsValidaugimdsv2);
XValidv2=cat(4,XValidv2.input{:});
XTestv2=readall(auimdsTestaugimdsv2);
XTestv2=cat(4,XTestv2.input{:});

XTrainv3=readall(auimdsTrainaugimdsv3);
XTrainv3=cat(4,XTrainv3.input{:});
XValidv3=readall(auimdsValidaugimdsv3);
XValidv3=cat(4,XValidv3.input{:});
XTestv3=readall(auimdsTestaugimdsv3);
XTestv3=cat(4,XTestv3.input{:});

XTrainv4=readall(auimdsTrainaugimdsv4);
XTrainv4=cat(4,XTrainv4.input{:});
XValidv4=readall(auimdsValidaugimdsv4);
XValidv4=cat(4,XValidv4.input{:});
XTestv4=readall(auimdsTestaugimdsv4);
XTestv4=cat(4,XTestv4.input{:});

XTrainv5=readall(auimdsTrainaugimdsv5);
XTrainv5=cat(4,XTrainv5.input{:});
XValidv5=readall(auimdsValidaugimdsv5);
XValidv5=cat(4,XValidv5.input{:});
XTestv5=readall(auimdsTestaugimdsv5);
XTestv5=cat(4,XTestv5.input{:});

XTrainv6=readall(auimdsTrainaugimdsv6);
XTrainv6=cat(4,XTrainv6.input{:});
XValidv6=readall(auimdsValidaugimdsv6);
XValidv6=cat(4,XValidv6.input{:});
XTestv6=readall(auimdsTestaugimdsv6);
XTestv6=cat(4,XTestv6.input{:});


YTrain=labels(TrainIdx);
YValid=labels(ValidIdx);
YTest=labels(TestIdx);
end