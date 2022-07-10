function [Hr]=generate_haar2(m,N)

% Input :
%     N : size of matrix to be generated, N must be some power of 2.
% Output:
%    Hr : Haar matrix of size NxN

if (N<2 || (log2(N)-floor(log2(N)))~=0)
    error('The input argument should be of form 2^k');
end

p=[0 0];
q=[0 1];
n=nextpow2(N);

for i=1:n-1
    p=[p i*ones(1,2^i)];
    t=1:(2^i);
    q=[q t];
end
Hr=zeros(m,N);
Hr(1,:)=1;
for i=2:N; % 
    P=p(1,i); Q=q(1,i);
    for j= (N*(Q-1)/(2^P)):(N*((Q-0.5)/(2^P))-1)
        Hr(i,j+1)=2^(P/2);
    end
    for j= (N*((Q-0.5)/(2^P))):(N*(Q/(2^P))-1)
        Hr(i,j+1)=-(2^(P/2));
    end
    if size(Hr,1) == m+1;
        break
    end
end
ixp = find(Hr>0);
Hr(ixp) = 1;
ixn = find(Hr<0);
Hr(ixn) = -1;

%Hr=Hr*(1/sqrt(N));
end