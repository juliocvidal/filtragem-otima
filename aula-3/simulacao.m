modelo;

yk = zeros(1,200);
xk = zeros(2,200);

yk_ = zeros(1,200);

%condicao inicial
xk(:,1) = x_ + sqrt(P_) * randn(2,1);
vk = sqrt(R) * randn;
yk(1) = C * xk(:,1) + vk;

for i=2:200
    
      uk = 10 * (y_k - Eum' * xk(:,i-1)) - 2 * Edois' * xk(:,i-1);
      wk = sqrt(Q) * randn(2,1);
      
      xk(:,i) = A * xk(:,i-1) + B *uk + wk;
      
      vk = sqrt(R) * randn;
      yk(i) = C * xk(:,i) + vk;

end

for i=1:200
    yk_(i) = y_k;
end

plot(yk);
plot(yk_);

%plot(y_k);