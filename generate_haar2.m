function [H]=generate_haar2(m,N)

% Input :
%     N : size of matrix to be generated, N =2^k.
% Output:
%    Hr : Haar transform of size NxN
% better performance can be achieved by using fractional coefficeints of haar transform

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
H=zeros(m,N);
H(1,:)=1;
for i=2:N; % 
    P=p(1,i); Q=q(1,i);
    for j= (N*(Q-1)/(2^P)):(N*((Q-0.5)/(2^P))-1)
        H(i,j+1)=2^(P/2);
    end
    for j= (N*((Q-0.5)/(2^P))):(N*(Q/(2^P))-1)
        H(i,j+1)=-(2^(P/2));
    end
    if size(H,1) == m+1;   % to generate rectangular Haar matrix
        break
    end
end
ixp = find(H>0);  % Positive values are made to 1;
H(ixp) = 1;
ixn = find(H<0); % Negtive values are made to -1;
H(ixn) = -1;

end
