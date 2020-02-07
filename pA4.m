bcLeft = 1;
bcRight = 1;
bcTop = 0;
bcBottom = 0;
nx = 14;
ny = 14;
V = zeros(nx,ny);
maxIteration = 1200;

for k = 0 : maxIteration 

    for i = 1 : (nx)

         for j = 1 : (ny)

             if i == 1

         V(i,j) = bcLeft;

        elseif i == nx

          V(i,j) = bcRight;        

        elseif j == 1

            V(i,j) = bcBottom;

        elseif j == ny

               V(i,j) = bcTop;

        else  

            V(i,j) = (V((i+1),j)+V((i-1),j)+V(i,(j+1))+V(i,(j-1)))/4;

            end

         end

    end
    

    subplot(3,1,1)

    surf(V);

    pause(0.05)

    [Ex,Ey] = gradient(V);
    
    subplot(3,1,2)

    surf(-Ex,-Ey)
    
    
    subplot(3,1,3)

    quiver(-Ex,-Ey)

    pause(0.05)


end