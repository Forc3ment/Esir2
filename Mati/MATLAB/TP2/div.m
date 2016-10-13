function D = div(p)

p1 = p(:,:,1);
p2 = p(:,:,2);
D =     [p1(1,:);(p1(2:end-1,:)-p1(1:end-2,:));-p1(end-1,:)];
D = D + [p2(:,1) (p2(:,2:end-1)-p2(:,1:end-2)) -p2(:,end-1)];


