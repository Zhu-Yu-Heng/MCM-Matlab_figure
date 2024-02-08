clc, clear
 a=readmatrix('1.xlsx');
 [n,m]=size(a);
 p=a./sum(a);
 e=-sum(p.*log(p))/log(n);
 g=1-e; w=g/sum(g) %Calculated weight
s=w*p' %Calculate the comprehensive evaluation value of each evaluation object
[ss,ind1]=sort(s,'descend') %Rank the values from greatest to smallest
ind2(ind1)=1:n %The sorting position corresponding to the student number
writematrix(w,'1_1.xlsx') %Write the data to an Excel document
writematrix([1:n;s;ind2],'1_1.xlsx','Sheet',2) %Write the data to Sheet 2

%The drawing is done in excel
