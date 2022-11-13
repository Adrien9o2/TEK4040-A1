figure;
hold on
[X1,Y1,Z1] = ellipsoid(0,0,0,halfAxisCinetic(1),halfAxisCinetic(2),halfAxisCinetic(3),50);
[X2,Y2,Z2] = ellipsoid(0,0,0,halfAxisMomentumNearX(1),halfAxisMomentumNearX(2),halfAxisMomentumNearX(3),50);
e1 = surf(X1,Y1,Z1,FaceColor='blue',EdgeColor='none');
e2 = surf(X2,Y2,Z2,FaceColor='red',EdgeColor='none');
e3 = plot3(out.wtNearX.Data(:,1),out.wtNearX.Data(:,2),out.wtNearX.Data(:,3),LineWidth=2.0,Color='green');
legend([e1,e2,e3],{'Cinetic ellipsoid', 'Moment ellipsoid Near X', 'solved trajectory'});
axis equal
hold off
figure;
hold on
[X1,Y1,Z1] = ellipsoid(0,0,0,halfAxisCinetic(1),halfAxisCinetic(2),halfAxisCinetic(3),50);
[X2,Y2,Z2] = ellipsoid(0,0,0,halfAxisMomentumNearY(1),halfAxisMomentumNearY(2),halfAxisMomentumNearY(3),50);
e1 = surf(X1,Y1,Z1,FaceColor='blue',EdgeColor='none');
e2 = surf(X2,Y2,Z2,FaceColor='red',EdgeColor='none');
e3 = plot3(out.wtNearY.Data(:,1),out.wtNearY.Data(:,2),out.wtNearY.Data(:,3),LineWidth=2.0,Color='green');
legend([e1,e2,e3],{'Cinetic ellipsoid', 'Moment ellipsoid Near Y', 'solved trajectory'});
axis equal
hold off
figure;
hold on
[X1,Y1,Z1] = ellipsoid(0,0,0,halfAxisCinetic(1),halfAxisCinetic(2),halfAxisCinetic(3),50);
[X2,Y2,Z2] = ellipsoid(0,0,0,halfAxisMomentumNearZ(1),halfAxisMomentumNearZ(2),halfAxisMomentumNearZ(3),50);
e1 = surf(X1,Y1,Z1,FaceColor='blue',EdgeColor='none');
e2 = surf(X2,Y2,Z2,FaceColor='red',EdgeColor='none');
e3 = plot3(out.wtNearZ.Data(:,1),out.wtNearZ.Data(:,2),out.wtNearZ.Data(:,3),LineWidth=2.0,Color='green');
legend([e1,e2,e3],{'Cinetic ellipsoid', 'Moment ellipsoid Near Z', 'solved trajectory' });
axis equal
hold off
