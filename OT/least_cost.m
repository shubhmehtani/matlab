clc;
clear
cost=[2,10,4,5;6,12,8,11;3,9,5,7];

supply=[12 25 20];
demand=[25 10 15 5];
[m,n]=size(cost);

if (sum(supply)==sum(demand))
    disp('balanced');

elseif (sum(supply)>sum(demand))
        cost(:,end+1)=zeros(m,1);
        demand(end+1)=sum(supply)-sum(demand);
else
    cost(end+1,:)=zeros(1,n);
    supply(end+1)=sum(demand)-sum(supply);
end
[m,n]=size(cost);
X=zeros(m,n);
icost=cost;
while any(supply)~=0
    mincost=min(min(cost));
    [r,c]=find(cost==mincost);
    y=min(supply(r),demand(c));
    [alloc,index]=max(y);
    rr=r(index);
    cc=c(index); 
    X(rr,cc)=alloc;
    supply(rr)=supply(rr)-alloc;
    demand(cc)=demand(cc)-alloc;
    cost(rr,cc)=inf;
end
finalcost=X.*icost
sum(sum(finalcost))