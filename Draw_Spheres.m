db = 28.93; %diameter of big particles
ds = 21.7; %diameter of small particles
corr  = 6.05/6.21;
for i=1:1:1
    set(gcf,'Color','k');
    set(gcf, 'InvertHardCopy', 'off');
    dt=i;
    c2s = circshift(pos1,-dt);
    dif = c2s-pos1;
    a = 35.3;
    dis = sqrt(dif(:,1).^2 + dif(:,2).^2)/a;
    min(dis);
    max(dis);
    pos1 = [pos1(:,1:4),dif(:,3:4),dis,dif(:,1:2)];
    cmap = colormap;
    %%%%%%%%%%%% Bounding box for removing overlap %%%%%%%%%%%%%%%%
    m1 = 0;
    m2 = 1560;
    n1 = 0;
    n2 = 1160;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    f = find(pos1(:,3)==1 & pos1(:,5)==dt & pos1(:,6)==0 & pos1(:,1)>m1 & pos1(:,1)<m2 & pos1(:,2)>n1 & pos1(:,2)<n2);
    C = pos1(f,:);
    C(:,1)=C(:,1)+C(:,8);
    C(:,2)=C(:,2)+C(:,9);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for j=1:length(f)
   
        if(C(j,8)>1);
            k1 = 64;
        else
            k1 = max(1,floor(64*C(j,8)));
        end
        [Xs Ys Zs]=sphere(70);
        %hs3 = surf(Xs*C(j,5)+C(j,1),Ys*C(j,5)+C(j,2),Zs*C(j,5));%surf(Xs*C(j,5)+C(j,1), Ys*C(j,5)+C(j,2), Zs*C(j,5)+20);
        hs3 = surf(Xs*35.3+C(j,1),Ys*35.3+C(j,2),Zs*35.3);
        set(hs3,'EdgeColor','none', ...
            'FaceColor',cmap(k1,:), ...
            'FaceLighting','phong', ...
            'AmbientStrength',0.2, ...
            'DiffuseStrength',1, ...
            'SpecularStrength',0.5, ...
            'SpecularExponent',25, ...
            'SpecularColorReflectance',0.5,...
            'BackFaceLighting','lit');
        %         camlight left;
        %         material shiny;
        daspect([1 1 1]);
        %         hidden off
        %         set(h,'Visible','off')
        %         axis square
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        hold on
        %axis image;%([0 800 0 600 0 20])
    end
    view(2);
    grid off;
    camlight left;
    lighting phong;
    material shiny;
    axis equal tight off;
%     caxis([0 1]);
%     colorbar;
%     saveas(gcf,['F:\Glassy Dynamics\Pinned Wall\Displacement_Images\W4\W4_disp_a10_start1000_' num2str(dt) '.png']);
%     close
    % alpha(0.5);
    %hold on
    %     set(gcf,'Color','k');
    %     set(gcf, 'InvertHardCopy', 'off')
    %([0 800 0 600 0 20])
    %     set(gca,'Color','k');
    %     set(gca,'xtick',[]);
    %     set(gca,'ytick',[]);
    %saveas(gcf,'Data11_test2.png');
    %     h1 = axes('Position', [ 1 1 600 400])
    %     colorbar;
    %     set(h1,'Visible','off');
end