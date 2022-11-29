% Utkarsh Kumar 
% Linear Block Code 

while(1)

msg = input("Enter your msg code word of length 3");
if length(msg)>3
    disp("Enter valid length sequence code");
else

I = eye(3,3);
P =input("Enter your parity matrix of 3x3");
disp("Generator matrix is given by :");

G = [I P];   % concatinating Identity & Parity mstrix 
             % to create Generator matrix :
disp(G);

codeword = msg*G;
codeword = rem(codeword,2);  % Converting into Binary Bits  :

disp("Your Codeword is :");
disp(codeword);

% Another way using Xoring
C = msg*P;
C = rem(C,2);
disp("Your checkbits are :");
disp(C);

end
end


