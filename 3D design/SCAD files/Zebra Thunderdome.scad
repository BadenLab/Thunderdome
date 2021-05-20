// // // // // // // // // // // // // // // // // // // // // // // // // // // //
/*                               General Parameters                              */
// // // // // // // // // // // // // // // // // // // // // // // // // // // //

Walls = 3;
tol = 0.1;
Tol = 0.75;
TOL = 0.5; // for OKR
Smoothness = 360;

// // // // // // // // // // // // // // // // // // // // // // // // // // // //
/*                                    Switches                                   */
// // // // // // // // // // // // // // // // // // // // // // // // // // // //

Frames = 10;
Links = 10;
Petri_Dish = 10;
Dish_Holder = 20;
Dome = 10;
OKR = 10;
Gear = 10;
Gear_Bevel = 20;
Cut = 10;
Platform = 10;
IR_LED = 10;
Camera = 10;
IR_Ring = 10;
IR_Filter = 10;
IR_Illumination = 10;
Separator = 10;
Platform_Rods = 10;


LED = 10;
LED_Holder = 10;
    Red_LED = 20;
    Green_LED = 20;
    Blue_LED = 20;
    UV_LED = 20;
Rods = 10;
Stepper = 10;
Platform_Steppers = 10;

movement =10;
z_plat = -40+40;
coupe1 = 10;
coupe2 = 10;
// // // // // // // // // // // // // // // // // // // // // // // // // // // //
/*                                Module Parameters                              */
// // // // // // // // // // // // // // // // // // // // // // // // // // // //


// // // // // General  // // // // // //
    r_Dome = 150;
    camera_height = 110;
    M3 = 1.5+tol;
    M4 = 2+tol;
    M6 = 3+tol;
x_Attache = 10;
h_Attache = 5;
h_Base = 20;
WidthArm = 25;

    
// // // // // LED  // // // // // //
    
Steps = 45;
End = 315;
rr = r_Dome;
r_LED = 5.75/2 + tol;
h_LEDHolder = 1.5;
r_LEDHolder = 10;
h_LED = 20;
LED1 = rr/5;
LED2 = rr*3/5;  

sp = 0.55+0.1;
zzz = 2.5;
R_LEDholder = 7.75/2;
r_LEDholder = 5/2;
h_LEDholder = 0.5+zzz;
z_LEDholder = 4.6-zzz;

R_LED = 5/2+tol;
H_LED = 8.5;
R_Rim = 5.9/2+tol;
H_Rim = 1.15;
R_pin = 0.5;
H_pin = 10;
h_pin = 7.5;

R_IR = 6/2;
r_IR = 5/2+tol;
H_IR = 1;
h_IR = 7;

connection = 4;

// // // // // Petri Dish  // // // // // //
    r_Dish = 36.75/2;//37.5/2;
    r_Dish2 = 36.75/2;//53.5/2;
    h_Dish = 10;
    h_Dish2 = 10;
    w_Dish =0.5;
    
    r_DishHolder = r_Dish+tol+Walls+r_IR+Walls;
    r_DishHolder2 = r_Dish2+tol+Walls+Walls;
    
// // // // // OKR  // // // // // //
    r_OKR = r_DishHolder+H_IR+Walls+connection+TOL;
    h_OKR = 3/2*h_Dish;
    n_OKR = 12/2;
    p_OKR = PI * r_OKR ;
    Slice = p_OKR / n_OKR ;

// // // // // Gear  // // // // // //
    Module = 2; // 0.01
    width = 10.0; // 0.01 //rim height
    rim_width = 2.65; 
    teeth = 30;
    pressure_angle = 20; // 0.01
    helix_angle = 20-10; // 0.01
    clearance = 0.05; //  Play between teeth

// // // // // Aluminium frames  // // // // // //
    Alu1 = 50;
    Alu2 = 100;
    Alu3 = 150;
    Alu4 = 200;
    Alu5 = 300;
    x_Alu = 15;
    g_Alu = 3;
    h_Alu = 5;
    d_Alu = 1;
    x_Eq = 44;
    y_Eq = 15;
    z_Eq = 1;
    r_screw = 2.5;
    r_hex = 1.5;


// // // // // // // // // // // // // // // // // // // // // // // // // // // //
/*                                     Module                                    */
// // // // // // // // // // // // // // // // // // // // // // // // // // // //


// // // // // Dome  // // // // // //
module Sphere(){
difference(){
    union(){
        Dome_Base();
        intersection(){   
            sphere(r=rr,$fn=Smoothness);
            union(){
                for ( i = [0:Steps:End] ) {
                    rotate([0,0,i])translate([-WidthArm/2,0,0])cube([WidthArm,rr,rr]);
                }
            }
        }
    }
    sphere(r=rr-Walls,$fn=Smoothness);
    translate([-rr,-rr,-rr])cube([2*rr,2*rr,rr]);
    LEDs();
}
rotate([0,0,-45/2])Attaches();
}

module Sphere2(){
difference(){
    union(){
        Dome_Base();
        for ( i = [0:3] ){
            difference(){
                rotate([90,0,i*360/8])translate([0,0,-WidthArm/2])cylinder(r=rr,h=WidthArm,$fn=Smoothness);
                rotate([90,0,i*360/8])translate([0,0,-WidthArm/2-tol])cylinder(r=rr-Walls,h=WidthArm+2*tol,$fn=Smoothness);
            }
        }
    }
    translate([-rr,-rr,-rr])cube([2*rr,2*rr,rr]);
    LEDs();
}
rotate([0,0,-45/2])Attaches();
}

module Dome_Base(){
difference(){
    cylinder(r=rr,h=h_Base,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=rr-Walls,h=h_Base+2*tol,$fn=Smoothness);
}
}

module Attaches(){
difference(){
    intersection(){
        cylinder(r=rr,h=h_Attache,$fn=Smoothness);
        union(){
            translate([-x_Attache/2-2*x_Attache,-rr,0])cube([x_Attache,rr-Alu3/2+x_Alu/2,h_Attache]);
            translate([-x_Attache/2+2*x_Attache,-rr,0])cube([x_Attache,rr-Alu3/2+x_Alu/2,h_Attache]);
            translate([-x_Attache/2-2*x_Attache,Alu3/2-x_Alu/2,0])cube([x_Attache,rr-Alu3/2+x_Alu/2,h_Attache]);
            translate([-x_Attache/2+2*x_Attache,Alu3/2-x_Alu/2,0])cube([x_Attache,rr-Alu3/2+x_Alu/2,h_Attache]);
            translate([-rr,-x_Attache/2-2*x_Attache,0])cube([rr-Alu3/2+x_Alu/2,x_Attache,h_Attache]);
            translate([-rr,-x_Attache/2+2*x_Attache,0])cube([rr-Alu3/2+x_Alu/2,x_Attache,h_Attache]);
            translate([Alu3/2-x_Alu/2,-x_Attache/2-2*x_Attache,0])cube([rr-Alu3/2+x_Alu/2,x_Attache,h_Attache]);
            translate([Alu3/2-x_Alu/2,-x_Attache/2+2*x_Attache,0])cube([rr-Alu3/2+x_Alu/2,x_Attache,h_Attache]);
        }
    }
    translate([-2*x_Attache,Alu3/2,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([2*x_Attache,Alu3/2,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([-2*x_Attache,-Alu3/2,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([2*x_Attache,-Alu3/2,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([Alu3/2,-2*x_Attache,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([Alu3/2,2*x_Attache,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([-Alu3/2,-2*x_Attache,0])cylinder(r=M3,h=h_Attache,$fn=60);
    translate([-Alu3/2,2*x_Attache,0])cylinder(r=M3,h=h_Attache,$fn=60);
}
}

module LED_Holes(){
rotate([5+sp,1+sp,1])cylinder(r=r_LED,h=rr+10,$fn=60);
rotate([5+sp,-1-sp,-1])cylinder(r=r_LED,h=rr+10,$fn=60);
rotate([3-sp,1+sp,1])cylinder(r=r_LED,h=rr+10,$fn=60);
rotate([3-sp,-1-sp,-1])cylinder(r=r_LED,h=rr+10,$fn=60);

}
module LEDs(){
for ( i = [0:Steps:End] ){
    for ( j = [90:-30:30] ){
        rotate([-j,0,i])translate([0,0,0])LED_Holes();
        rotate([-j+4,0,i])translate([0,0,rr-h_LEDHolder])cylinder(r=r_LEDHolder,h=h_LEDHolder,$fn=Smoothness);
    }
}
}

if (Dome == 1){
    rotate([0,0,45/2])Sphere();
}
if (Dome == 2){
    difference(){
        intersection(){
            rotate([0,0,45/2])Sphere2();
            rotate([0,0,-45])cube([200,200,200]);
        }
        cut();
    }
}
// // // // // Dome link // // // // // //
module cut(){
intersection(){
    cylinder(r=rr,h=h_Base,$fn=Smoothness);
    union(){
        mirror([0,1,0])translate([0,0,h_Base/2])rotate([0,0,-45])cube([rr+Walls,5*Walls,h_Base/2]);
        translate([0,0,h_Base/2])rotate([0,0,-45])cube([rr+Walls,5*Walls,h_Base/2]);
    }
}
}

module cut_posi(){
difference(){
    intersection(){
        difference(){
            cylinder(r=rr+Walls,h=h_Base,$fn=Smoothness);
            cylinder(r=rr-2*Walls,h=h_Base,$fn=Smoothness);
            
        }
        union(){
            mirror([0,1,0])rotate([0,0,0])cube([rr+2*Walls,5*Walls-tol,h_Base]);
            rotate([0,0,0])cube([rr+2*Walls,5*Walls-tol,h_Base]);
        }
    }
    intersection(){
        difference(){
            cylinder(r=rr+tol,h=h_Base/2,$fn=Smoothness);
            cylinder(r=rr-Walls-tol,h=h_Base/2,$fn=Smoothness);
            
        }
        union(){
            mirror([0,1,0])rotate([0,0,0])cube([rr+2*Walls,5*Walls,h_Base/2]);
            rotate([0,0,0])cube([rr+2*Walls,5*Walls,h_Base/2]);
        }
    }
}
}

if ( Cut ==1 ){ 
    rotate([0,0,-45])cut_posi();
}
    
// // // // // OKR // // // // // //
t_angle = 30;
t_x0 = 0;
t_y0 = 0;
t_x1 = r_OKR;
t_y1 = tan(t_angle/2) * t_x1;
t_x2 = r_OKR;
t_y2 = -tan(t_angle/2) * t_x1;
t_z = h_OKR+1.5*Walls+tol;
points =[ [t_x0,t_y0],[t_x1,t_y1],[t_x2,t_y2] ];
module Slices(){
difference(){
    cylinder(r=r_Dish+4.5*Walls,h=h_OKR+1.5*Walls,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_Dish+2.5*Walls-0.4,h=h_OKR+1.5*Walls+2*tol,$fn=Smoothness);

    translate([0,0,-tol])intersection(){
            cylinder(r=r_OKR,h=h_OKR+1.5*Walls+2*tol,$fn=Smoothness);
            for ( i = [0:((360/t_angle)-1)/2] ){
                //rotate([0,0,i*(360/n_OKR)])translate([0,-Slice/2,0])cube([r_OKR,Slice,h_OKR+1.5*Walls+tol]);
                rotate([0,0,(2*t_angle)*i])linear_extrude (height = t_z+2*tol)polygon(points);
        }
    }
}
}
module OKR(){
Slices();
translate([0,0,-Walls])difference(){
    cylinder(r=R_Gear,h=Walls,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_Dish+2.5*Walls,h=Walls+2*tol,$fn=Smoothness);
}
}

if ( OKR == 2 ) {
    if ( movement == 1 ){
        difference(){
            color([0.75,0.75,0])rotate([0,0,$t*360])OKR();
            if (coupe2 ==1) rotate([0,0,0])translate([-100,-100,-100])cube([100,200,200]);
            }
    }
}
if ( OKR == 1 ) {
    difference(){
        translate([0,0,z_plat])OKR();
        //translate([-100,0,-100])cube([200,200,200]);
    }
}

    
// // // // // Aluminium frames // // // // // //
module Frame1(){
translate([-Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,0])Alu_Extrusion(Alu3,1);
translate([Alu3/2-x_Alu/2,Alu3/2-x_Alu/2,0])Alu_Extrusion(Alu3,2);
translate([-Alu3/2+x_Alu/2,Alu3/2-x_Alu/2,0])Alu_Extrusion(Alu3,1);
translate([-Alu3/2-x_Alu/2,Alu3/2+x_Alu/2,0])Alu_Extrusion(Alu3,2);
}
module Frame2(){
translate([-Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu2,0);
translate([Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu2,0);
translate([Alu3/2-x_Alu/2,Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu2,0);
translate([-Alu3/2-x_Alu/2,Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu2,0);
}
module Frame3(){
translate([-Alu3/2-x_Alu/2,-x_Alu/2,0])Alu_Extrusion(Alu3,0);
translate([Alu3/2-x_Alu/2,-x_Alu/2,0])Alu_Extrusion(Alu3,0);
translate([-Alu4/2,x_Alu/2,camera_height])Alu_Extrusion(Alu4,1);
}
module Frame4(){
translate([-Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu1,0);
translate([Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu1,0);
translate([Alu3/2-x_Alu/2,Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu1,0);
translate([-Alu3/2-x_Alu/2,Alu3/2-x_Alu/2,x_Alu])Alu_Extrusion(Alu1,0);
}
if (Frames == 1){
translate([0,0,-Alu2-3*x_Alu-Alu1])Frame4();
translate([0,0,-Alu2-2*x_Alu])Frame1();
translate([0,0,-Alu2-2*x_Alu])Frame2();
translate([0,0,-x_Alu])Frame1();
Frame3();
}
module Alu_Extrusion(length,orientation){
    if (orientation == 0) Alu_Ext(length);
    if (orientation == 1) rotate([0,90,0])translate([-x_Alu,0,0])Alu_Ext(length);
    if (orientation == 2) rotate([90,0,0])Alu_Ext(length);
}
module Alu_Ext(length){
difference(){
    cube([x_Alu,x_Alu,length]);
    translate([x_Alu/2-g_Alu/2,-tol,0])cube([g_Alu,h_Alu+tol,length]);
    translate([0,x_Alu/2-g_Alu/2,0])cube([h_Alu,g_Alu,length]);
    translate([x_Alu/2-g_Alu/2,x_Alu-h_Alu,0])cube([g_Alu,h_Alu,length]);
    translate([x_Alu-h_Alu,x_Alu/2-g_Alu/2,0])cube([h_Alu,g_Alu,length]);
    translate([x_Alu/2-h_Alu/2,d_Alu,0])cube([h_Alu,g_Alu,length]);
    translate([d_Alu,x_Alu/2-h_Alu/2,0])cube([g_Alu,h_Alu,length]);
    translate([x_Alu/2-h_Alu/2,x_Alu-d_Alu-g_Alu,0])cube([h_Alu,g_Alu,length]);
    translate([x_Alu-d_Alu-g_Alu,x_Alu/2-h_Alu/2,0])cube([g_Alu,h_Alu,length]);
}
}

module screw(){
difference(){
    sphere(r=r_screw,$fn=Smoothness);
    translate([-r_screw,-r_screw,-r_screw])cube([2*r_screw,2*r_screw,r_screw]);
    translate([0,0,z_Eq])cylinder(r=r_hex,h=r_screw,$fn=6);
}
}

module Equerre(){
cube([x_Eq,y_Eq,z_Eq]);
cube([y_Eq,x_Eq,z_Eq]);
translate([y_Eq/2,y_Eq/2,0])screw();
translate([y_Eq/2+y_Eq,y_Eq/2,0])screw();
translate([y_Eq/2+2*y_Eq,y_Eq/2,0])screw();
translate([y_Eq/2,y_Eq/2+y_Eq,0])screw();
translate([y_Eq/2,y_Eq/2+2*y_Eq,0])screw();
}

module T_Link(){
cube([x_Eq,y_Eq,z_Eq]);
translate([x_Eq/2-y_Eq/2,0,0])cube([y_Eq,x_Eq,z_Eq]);
translate([x_Eq/2,y_Eq/2,0])screw();
translate([x_Eq/2+y_Eq,y_Eq/2,0])screw();
translate([x_Eq/2-y_Eq,y_Eq/2,0])screw();
translate([x_Eq/2,y_Eq/2+y_Eq,0])screw();
translate([x_Eq/2,y_Eq/2+2*y_Eq,0])screw();
}

module Link (){
    for (i =[0:1]){
        rotate([0,0,180*i])translate([Alu3/2+x_Alu/2,-x_Eq/2,-x_Alu])rotate([90,0,90])T_Link();
    }
    for (i = [0:3]){ 
        rotate([0,0,90*i]){
            translate([Alu3/2+x_Alu/2,-Alu3/2-x_Alu/2,-Alu2])rotate([0,90,0])T_Link();
            translate([Alu3/2+x_Alu/2,Alu3/2+x_Alu/2,-Alu2])rotate([0,90,0])mirror([0,1,0])T_Link();
            translate([-Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,0]) Equerre();
            translate([-Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,0])rotate([90,90,0]) Equerre();
            translate([-Alu3/2-x_Alu/2,-Alu3/2-x_Alu/2,0])rotate([0,-90,0])rotate([0,0,90])Equerre();
        }
    }
}

if (Links ==1){
    Link();
}

// // // // // Petri Dish // // // // // //
module Dish(){
difference(){
    cylinder(r=r_Dish, h=h_Dish,$fn=Smoothness);
    translate([0,0,w_Dish])cylinder(r=r_Dish-2*w_Dish,h_Dish+tol,$fn=Smoothness);
}
}
if ( Petri_Dish == 1 ) color([0.1,0.1,0.9,0.5])Dish();
    
module Dish2(){
difference(){
    cylinder(r=r_Dish2, h=h_Dish2,$fn=Smoothness);
    translate([0,0,w_Dish])cylinder(r=r_Dish2-w_Dish,h_Dish2,$fn=Smoothness);
}
}
if ( Petri_Dish == 2 ) Dish2();

// // // // // Dish Holder // // // // // //

module IR_LED(){
    cylinder(r=R_IR,h=H_IR,$fn=60);
    cylinder(r=r_IR,h=h_IR,$fn=60);
    translate([0,0,h_IR])sphere(r=r_IR,$fn=60);
}
if ( IR_LED == 1 ){
    for ( i = [0:8] ) rotate([0,0,i*360/9]){
        translate([r_DishHolder+H_IR+tol,0,H_IR/2])rotate([0,-90,0])IR_LED();
    }
}
//translate([-2*x_Attache,Alu3/2,0])cylinder(r=M3,h=h_Attache,$fn=60);
xx = r_DishHolder;
yy = 2*r_IR;
zz = 1;

module Dish_Holder_Attach(){
translate([-xx,-Walls/2,r_IR+TOL])cube([2*Walls,Walls,h_OKR+Walls]);
aa = 6*Walls;
difference(){
    union(){
        translate([-Alu3/2+x_Alu/2+tol,-Walls/2,r_IR+TOL+h_OKR+Walls])cube([Alu3/2-x_Alu/2-xx+2*Walls-tol,Walls,Walls]);
        translate([-Alu3/2+x_Alu/2+tol,-Walls/2,r_IR+TOL+h_OKR-Walls])cube([aa,Walls,2*Walls]);
    }
    translate([-Alu3/2+x_Alu/2+aa,-Walls/2-tol,r_IR+TOL+h_OKR-Walls])rotate([-90,0,0])scale([1,0.4,1])cylinder(r=aa-Walls-tol,h=Walls+2*tol,$fn=Smoothness);
}
translate([-Alu3/2+x_Alu/2+Walls,-Walls/2,0])rotate([0,-33,0])cube([39,Walls,Walls]);
dd=3/2*x_Attache-tol;
ee=dd-x_Alu/2-tol;
difference(){
    translate([-Alu3/2-x_Alu/2-tol,-dd,0])cube([x_Alu+2*tol,ee,h_Attache]);
    translate([-Alu3/2,-dd+ee/2,-tol])cylinder(r=M3,h=h_Attache+2*tol,$fn=60);
}
mirror([0,1,0])difference(){
    translate([-Alu3/2-x_Alu/2-tol,-dd,0])cube([x_Alu+2*tol,ee,h_Attache]);
    translate([-Alu3/2,-dd+ee/2,-tol])cylinder(r=M3,h=h_Attache+2*tol,$fn=60);
}
difference(){
    translate([-Alu3/2+x_Alu/2+tol,-dd,0])cube([Walls,x_Alu+2*ee,h_OKR+3*Walls+tol]);
    translate([-Alu3/2+x_Alu/2-tol,0,h_OKR/2+Walls])rotate([0,90,0])cylinder(r=M3, h=Walls+2*tol, $fn=60);
}

translate([-Alu3/2-x_Alu/2-tol-Walls,-dd,-r_IR])cube([Walls,ee,r_IR+h_Attache]);
mirror([0,1,0])translate([-Alu3/2-x_Alu/2-tol-Walls,-dd,-r_IR])cube([Walls,ee,r_IR+h_Attache]);
translate([-Alu3/2+x_Alu/2+tol,-dd,-r_IR])cube([Walls,x_Alu+2*ee,r_IR+h_Attache]);
}

xx2 = r_DishHolder2;
yy2 = 2*r_IR;
zz2 = 1;
aa2 = 6*Walls;
dd2=3/2*x_Attache-tol;
ee2=dd2-x_Alu/2-tol;
module Dish_Holder_Attach2(){
translate([-xx2,-Walls/2,0])cube([2*Walls,Walls,h_OKR+2*Walls+tol]);

difference(){
    union(){
        translate([-Alu3/2+x_Alu/2+tol,-Walls/2,r_IR+TOL+h_OKR+Walls])cube([Alu3/2-x_Alu/2-xx2+2*Walls-tol,Walls,Walls]);
        translate([-Alu3/2+x_Alu/2+tol,-Walls/2,r_IR+TOL+h_OKR-Walls])cube([aa2,Walls,2*Walls]);
    }
    translate([-Alu3/2+x_Alu/2+aa2,-Walls/2-tol,r_IR+TOL+h_OKR-Walls])rotate([-90,0,0])scale([1,0.4,1])cylinder(r=aa2-Walls-tol,h=Walls+2*tol,$fn=Smoothness);
}
translate([-Alu3/2+x_Alu/2+Walls,-Walls/2,0])rotate([0,-40,0])cube([33,Walls,Walls]);

difference(){
    translate([-Alu3/2-x_Alu/2-tol,-dd2,0])cube([x_Alu+2*tol,ee2,h_Attache]);
    translate([-Alu3/2,-dd2+ee2/2,-tol])cylinder(r=M3,h=h_Attache+2*tol,$fn=60);
}
mirror([0,1,0])difference(){
    translate([-Alu3/2-x_Alu/2-tol,-dd2,0])cube([x_Alu+2*tol,ee2,h_Attache]);
    translate([-Alu3/2,-dd2+ee2/2,-tol])cylinder(r=M3,h=h_Attache+2*tol,$fn=60);
}
difference(){
    translate([-Alu3/2+x_Alu/2+tol,-dd2,0])cube([Walls,x_Alu+2*ee2,h_OKR+3*Walls+tol]);
    translate([-Alu3/2+x_Alu/2-tol,0,h_OKR/2+Walls])rotate([0,90,0])cylinder(r=M3, h=Walls+2*tol, $fn=60);
}

translate([-Alu3/2-x_Alu/2-tol-Walls,-dd2,-r_IR])cube([Walls,ee2,r_IR+h_Attache]);
mirror([0,1,0])translate([-Alu3/2-x_Alu/2-tol-Walls,-dd2,-r_IR])cube([Walls,ee2,r_IR+h_Attache]);
translate([-Alu3/2+x_Alu/2+tol,-dd2,-r_IR])cube([Walls,x_Alu+2*ee2,r_IR+h_Attache]);
}

module Dish_Holder(){
difference(){
    translate([0,0,-r_IR])cylinder(r=r_DishHolder,h=2*r_IR+Walls/2,$fn=Smoothness);
        
    translate([0,0,-Walls/2-R_IR-tol])cylinder(r=r_Dish-Walls,h=2*R_IR+Walls+2*tol,$fn=Smoothness);
    cylinder(r=r_Dish+tol,h=Walls+2*R_IR,$fn=Smoothness);
        
    for ( i = [0:8] ) rotate([0,0,i*360/9]){
        translate([0,-yy/2,0])cube([xx,yy,zz]);
        translate([r_DishHolder+H_IR+tol,0,H_IR/2])rotate([0,-90,0])IR_LED();
    }
}
Dish_Holder_Attach();
mirror([1,0,0])Dish_Holder_Attach();
}
if ( Dish_Holder == 1) Dish_Holder();
    

module Dish_Holder2(){
difference(){
    translate([0,0,-r_IR])cylinder(r=r_DishHolder2,h=1.5*Walls,$fn=Smoothness);
        
    translate([0,0,-Walls/2-R_IR-tol])cylinder(r=r_Dish2-TOL,h=2*R_IR+Walls+2*tol,$fn=Smoothness);
    cylinder(r=r_Dish2+tol,h=Walls+2*R_IR,$fn=Smoothness);
        
}
difference(){
    union(){
        Dish_Holder_Attach2();
        mirror([1,0,0])Dish_Holder_Attach2();
    }
    translate([-Alu3/2+x_Alu/2+2*Walls,-TOL/2-tol/2,0])cube([Alu3-x_Alu-4*Walls,TOL+tol,200]);
}
}
if ( Dish_Holder == 2) Dish_Holder2();
    
module Separator(){  
    translate([-Alu3/2+x_Alu/2+2*Walls+tol,-TOL/2,0])cube([Alu3-x_Alu-4*Walls-2*tol,TOL,50]);
}
if (Separator == 1)Separator();



// // // // // LED // // // // // //
module LED(){
cylinder(r=R_Rim,h=H_Rim,$fn=60);
cylinder(r=R_LED,h=H_LED-R_LED,$fn=60);
translate([0,0,H_LED-R_LED])sphere(r=R_LED,$fn=60);
}
module LED_posi(){
rotate([5,1,1])LED();
rotate([5,-1,-1])LED();
rotate([3,1,1])LED();
rotate([3,-1,-1])LED();
}


if (LED == 1){
    for ( i = [0:Steps:End] ){
        for ( j = [90:-30:30] ){
            if (Red_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([5+sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
                //rotate([-1-sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            if (Green_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([5+sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
                //rotate([-1-sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            if (Blue_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([3-sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
                //rotate([1+sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            if (UV_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([3-sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
                //rotate([1+sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            
            if (Red_LED == 2){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([5+sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])cylinder(r1=R_LED,r2=R_LED+2*Walls,h=r_Dome,$fn=60);
                //rotate([-1-sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            if (Green_LED == 2){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([5+sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])cylinder(r1=R_LED,r2=R_LED+2*Walls,h=r_Dome,$fn=60);
                //rotate([-1-sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            if (Blue_LED == 2){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([3-sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])cylinder(r1=R_LED,r2=R_LED+2*Walls,h=r_Dome,$fn=60);
                //rotate([1+sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
            if (UV_LED == 2){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([3-sp,-1-sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])cylinder(r1=R_LED,r2=R_LED+2*Walls,h=r_Dome,$fn=60);
                //rotate([1+sp,1+sp,0])translate([0,0,rr+H_Rim])rotate([0,180,0])LED();
            }}
        }
    }
}

module LED_Holder(){   
    difference(){
        cylinder(r=R_LEDholder,h=h_LEDholder,$fn=Smoothness);
        translate([0,0,-tol])cylinder(r=r_LEDholder,h=h_LEDholder+2*tol,$fn=Smoothness);
    }
}

if (LED_Holder == 1){
    for ( i = [0:Steps:End] ){
        for ( j = [90:-30:30] ){
            if (Red_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([5+sp,1+sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
                rotate([-1-sp,-1-sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
            }}
            if (Green_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([5+sp,-1-sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
                rotate([-1-sp,1+sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
            }}
            if (Blue_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([3-sp,1+sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
                rotate([1+sp,-1-sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
            }}
            if (UV_LED == 1){rotate([0,0,45/2]){
                rotate([-j,0,i])rotate([3-sp,-1-sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
                rotate([1+sp,1+sp,0])translate([0,0,rr+H_Rim-z_LEDholder])rotate([0,180,0])LED_Holder();
            }}
        }
    }
}


// // // // // Gear functions // // // // // //
use<gears.scad>;
rad = 180/PI;
function grad(pressure_angle) = pressure_angle*rad; // Converts radians to degrees 
function radian(pressure_angle) = pressure_angle/rad; // Converts degrees to radians 
function pol_to_cart(polvect) = [ polvect[0]*cos(polvect[1]), polvect[0]*sin(polvect[1]) ]; //Converts 2D polar coordinates to Cartesian
function ev(r,rho) = [ r/cos(rho), grad(tan(rho)-radian(rho)) ]; // Circle involute function: Returns the polar coordinates of an involute of a circle (r = Radius of the base circle. rho = Roll-off angle in degrees )
function kugel_zu_kart(vect) = [ vect[0]*sin(vect[1])*cos(vect[2]), vect[0]*sin(vect[1])*sin(vect[2]), vect[0]*cos(vect[1])]; //  Converts spherical coordinates to Cartesian. Format: radius, theta, phi; theta = angle to the z-axis, phi = angle to the x-axis on the xy-plane 
function kugelev(theta0,theta) = 1/sin(theta0)*acos(cos(theta)/cos(theta0))-acos(tan(theta0)/tan(theta));
function istgerade(zahl) = (zahl == floor(zahl/2)*2) ? 1 : 0;



R_Gear = 35+7;
H_Gear = 10;
r_OuterRim = R_Gear+Tol+3*Walls;
module Inner_Rim(){
difference(){
    union(){
        cylinder(r=R_Gear,h=H_Gear,$fn=Smoothness);

        intersection(){
            difference(){
                cylinder(r=R_Gear+2*Walls,h=H_Gear,$fn=Smoothness);
                cylinder(r=R_Gear,h=H_Gear,$fn=Smoothness);
            }
            intersection(){
                for (i = [0:3]){
                    rotate([0,0,90*i])translate([R_Gear/2,0,0])cylinder(r=R_Gear,h=H_Gear,$fn=3);
                }
                union(){
                    translate([-R_Gear-2*Walls,-R_Gear-2*Walls,H_Gear/3])cube([2*R_Gear+4*Walls,2*R_Gear+4*Walls,H_Gear/3]);
                    cylinder(r1=R_Gear, r2=R_Gear+2*Walls, h=H_Gear/3, $fn=Smoothness);
                    translate([0,0,2/3*H_Gear])cylinder(r1=R_Gear+2*Walls, r2=R_Gear, h=H_Gear/3, $fn=Smoothness);
                }
            }
        }
    }
    translate([0,0,-tol])cylinder(r=R_Gear-Walls,h=H_Gear+2*tol,$fn=Smoothness);
}
}

module Outer_Rim(){
difference(){
    union(){
        translate([0,0,Walls])cylinder(r=r_OuterRim,h=H_Gear-Walls,$fn=Smoothness);
        cylinder(r1=r_OuterRim-Walls-tol,r2=r_OuterRim-tol,h=Walls,$fn=Smoothness);
    }
    translate([0,0,-tol])cylinder(r=R_Gear+Tol,h=H_Gear+2*tol,$fn=Smoothness);
    
    intersection(){
        union(){
                translate([0,0,H_Gear/3])cylinder(r=R_Gear+2*Walls+Tol,h=H_Gear/3+tol,$fn=Smoothness);
                cylinder(r1=R_Gear+Tol, r2=R_Gear+2*Walls+Tol, h=H_Gear/3+tol, $fn=Smoothness);
                translate([0,0,2/3*H_Gear])cylinder(r1=R_Gear+2*Walls+Tol, r2=R_Gear+Tol, h=H_Gear/3, $fn=Smoothness);
            }
    }
    
    intersection(){
        difference(){
            cylinder(r=r_OuterRim,h=H_Gear/2,$fn=Smoothness);
            cylinder(r=R_Gear+Tol+2*Walls,h=H_Gear/2,$fn=Smoothness);
        }
        for(i=[0:3]){
            rotate([0,0,45*i])translate([-r_OuterRim,-1.5*Walls-tol,0])cube([2*r_OuterRim,3*Walls+2*tol,Walls+TOL]);
        }
    }
}
}


module Stepper_Holder(){
    
    rr0 = r_OuterRim;
    rr1 = r_OuterRim+2*Walls+2*r_LinearBearing;
    rr2 = r_OuterRim+r_Nut_Screw_M6+Walls;
    
translate([0,0,-Walls-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls]){
    difference(){
        cylinder(r=r_OuterRim,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol,$fn=Smoothness);
        translate([0,0,-(-Walls-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls)-H_Gear-tol])cylinder(r1=r_OuterRim-Walls,r2=r_OuterRim,h=Walls+tol,$fn=Smoothness);
        translate([0,0,-tol])cylinder(r=r_OuterRim-2*Walls,h=H_Gear+2*tol,$fn=Smoothness);
    }
    difference(){
        translate([0,0,-Walls])intersection(){
            union(){
                scale([rr0/rr1,1,1])cylinder(r=rr1,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol,$fn=Smoothness);
                scale([1,rr0/rr2,1])cylinder(r=rr1,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol,$fn=Smoothness);                
            }
            rotate([0,0,45])translate([-62,-30,3])cube([27.5,60,Walls]);
        }
     
       rotate([0,0,45])translate([bevel_offset+2*tol-y_posi_Stepper_Shaft-7.5,0,-h_Stepper+Walls-3.1+1])rotate([0,0,270]){
           Stepper();
           translate([-x_Stepper_Attach/2,0,h_Stepper-z_Stepper_Attach])cylinder(r=r_M35+tol, h=z_Stepper_Attach+20, $fn=Smoothness);
            translate([x_Stepper_Attach/2,0,h_Stepper-z_Stepper_Attach])cylinder(r=r_M35+tol, h=z_Stepper_Attach+20, $fn=Smoothness);
       }       
    }
    
    translate([0,0,-(-Walls-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls)-H_Gear-tol])intersection(){
        difference(){
            cylinder(r=r_OuterRim,h=H_Gear/2,$fn=Smoothness);
            cylinder(r=R_Gear+2*Walls+Tol+tol,h=H_Gear/2,$fn=Smoothness);
        }
        for(i=[0:3]){
            rotate([0,0,45*i])translate([-r_OuterRim,-1.5*Walls,0])cube([2*r_OuterRim,3*Walls,Walls+tol]);
        }
    }
}
}


// Sliding Rods measurements
    r_Rod = 4/2;                     // Sliding Rods radius
    r_LinearBearing = 8/2;           // Linear Bearing radius
    h_LinearBearing = 12;            // Linear Bearing length
// M6 Adjustment Screw option   
    r_Screw_M6 = 6/2+tol;           // M6 Adjustment Screw radius
    r_Nut_Screw_M6 = 14/2+tol;       // M6 Adjustment Screw Nut radius
    h_Nut_Screw_M6 = 3+2*tol;     // M6 Adjustment Screw Nut length
    M6_Pitch = 1.0;                 // M6 Adjustment Screw pitch
    r_M6_Lock = 5/2;                // M6 Nut Locker radius
    h_M6_Lock = 3;                  // M6 Nut Locker length

abc = 38;
bcd = 56.5;
r_Bearing = 5;
module Platform_Rods(){
difference(){
    union(){
        translate([Alu3/2+x_Alu/2-bcd,abc-4*Walls,0])cube([bcd,4*Walls,Walls]);
        translate([abc-4*Walls,Alu3/2+x_Alu/2-bcd,0])cube([4*Walls,bcd,Walls]);
        rotate([0,0,45])translate([r_OuterRim+r_LinearBearing+Walls,0,-2*Walls])cylinder(r=r_Rod+3*Walls,h=3*Walls,$fn=Smoothness);
    }
    rotate([0,0,45])translate([r_OuterRim+r_LinearBearing+Walls,0,-2*Walls-tol])cylinder(r=r_Rod+tol,h=2*Walls+tol,$fn=Smoothness);
    translate([Alu3/2,abc-2*Walls,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
    translate([abc-2*Walls,Alu3/2,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
}
difference(){
    union(){
        translate([-Alu3/2-x_Alu/2,-abc,0])cube([bcd,4*Walls,Walls]);
        translate([-abc,-Alu3/2-x_Alu/2,0])cube([4*Walls,bcd,Walls]);
        rotate([0,0,45])mirror([1,0,0])translate([r_OuterRim+r_LinearBearing+Walls,0,-2*Walls])cylinder(r=r_Rod+3*Walls,h=3*Walls,$fn=Smoothness);
    }
    rotate([0,0,45])mirror([1,0,0])translate([r_OuterRim+r_LinearBearing+Walls,0,-2*Walls-tol])cylinder(r=r_Rod+tol,h=2*Walls+tol,$fn=Smoothness);
    translate([-Alu3/2,-abc+2*Walls,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
    translate([-abc+2*Walls,-Alu3/2,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
}

difference(){
    union(){
        translate([-Alu3/2-x_Alu/2,-4*Walls+abc,0])cube([bcd,4*Walls,Walls]);
        translate([-abc,Alu3/2+x_Alu/2-bcd,0])cube([4*Walls,bcd,Walls]);
        rotate([0,0,45])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-2*Walls])cylinder(r=r_Bearing+2*Walls,h=3*Walls,$fn=Smoothness);
    }
    rotate([0,0,45])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-2*Walls])cylinder(r=M6+tol,h=2*Walls+tol,$fn=Smoothness);
    rotate([0,0,45])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,Walls])rotate([180,0,0])Bearing();
    translate([-Alu3/2,abc-2*Walls,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
    translate([-abc+2*Walls,Alu3/2,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
}
difference(){
    union(){
        translate([Alu3/2+x_Alu/2-bcd,-abc,0])cube([bcd,4*Walls,Walls]);
        translate([abc-4*Walls,-Alu3/2-x_Alu/2,0])cube([4*Walls,bcd,Walls]);
        rotate([0,0,45])mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-2*Walls])cylinder(r=r_Bearing+2*Walls,h=3*Walls,$fn=Smoothness);
    }
    rotate([0,0,45])mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-2*Walls])cylinder(r=M6+tol,h=2*Walls+tol,$fn=Smoothness);
    rotate([0,0,45])mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,Walls])rotate([180,0,0])Bearing();
    translate([Alu3/2,-abc+2*Walls,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
    translate([abc-2*Walls,-Alu3/2,0])cylinder(r=M3, h=Walls+tol,$fn=Smoothness);
}
} 
if (Platform_Rods == 1){
    difference(){
        Platform_Rods();
        translate([0,0,-2*Walls-tol])cylinder(r=r_OuterRim+Tol,h=3*Walls+2*tol,$fn=Smoothness);
    }
}

xyz = 80;
module Rods(){
rotate([0,0,45]){
    translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-xyz])cylinder(r=r_Screw_M6,h=xyz,$fn=Smoothness); 
    mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-xyz])cylinder(r=r_Screw_M6,h=xyz,$fn=Smoothness); 
    translate([r_OuterRim+r_LinearBearing+Walls,0,-xyz])cylinder(r=r_Rod,h=xyz,$fn=Smoothness);
    mirror([1,0,0])translate([r_OuterRim+r_LinearBearing+Walls,0,-xyz])cylinder(r=r_Rod,h=xyz,$fn=Smoothness);
}
}
if (Rods==1) Rods();

if (Platform_Steppers == 1){ 
rotate([0,0,45]){
    translate([0,r_OuterRim+r_Nut_Screw_M6+Walls+y_posi_Stepper_Shaft,-xyz])rotate([0,0,180])Stepper();
    mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls+y_posi_Stepper_Shaft,-xyz])rotate([0,0,180])Stepper();
}
}

module Platform(){
    translate([r_OuterRim+r_LinearBearing+Walls,0,-h_LinearBearing-H_Gear+Walls-tol])difference(){
        cylinder(r=r_LinearBearing+Walls,h=h_LinearBearing,$fn=Smoothness);
        translate([0,0,-tol])cylinder(r=r_LinearBearing,h=h_LinearBearing+2*tol,$fn=Smoothness);
    }
    mirror([1,0,0])translate([r_OuterRim+r_LinearBearing+Walls,0,-h_LinearBearing-H_Gear+Walls-tol])difference(){
        cylinder(r=r_LinearBearing+Walls,h=h_LinearBearing,$fn=Smoothness);
        translate([0,0,-tol])cylinder(r=r_LinearBearing,h=h_LinearBearing+2*tol,$fn=Smoothness);
    }
    
    translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-h_Nut_Screw_M6-2*Walls-H_Gear+Walls-tol])difference(){
        cylinder(r=r_Nut_Screw_M6+Walls, h=h_Nut_Screw_M6+2*Walls, $fn=Smoothness);
        translate([0,0,Walls-tol])cylinder(r=r_Nut_Screw_M6,h=h_Nut_Screw_M6+2*tol,$fn=6);
        translate([-r_Nut_Screw_M6-tol,0,Walls-tol])cube([2*r_Nut_Screw_M6+tol,2*r_Nut_Screw_M6+2*tol,h_Nut_Screw_M6+2*tol]);
        translate([0,0,-tol])cylinder(r=r_Screw_M6,h=h_Nut_Screw_M6+2*Walls+2*tol,$fn=Smoothness); 
    }
    mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,-h_Nut_Screw_M6-2*Walls-H_Gear+Walls-tol])difference(){
        cylinder(r=r_Nut_Screw_M6+Walls, h=h_Nut_Screw_M6+2*Walls, $fn=Smoothness);
        translate([0,0,Walls-tol])cylinder(r=r_Nut_Screw_M6,h=h_Nut_Screw_M6+2*tol,$fn=6);
        translate([-r_Nut_Screw_M6-tol,0,Walls-tol])cube([2*r_Nut_Screw_M6+tol,2*r_Nut_Screw_M6+2*tol,h_Nut_Screw_M6+2*tol]);
        translate([0,0,-tol])cylinder(r=r_Screw_M6,h=h_Nut_Screw_M6+2*Walls+2*tol,$fn=Smoothness); 
    }
    rr0 = r_OuterRim;
    rr1 = r_OuterRim+2*Walls+2*r_LinearBearing;
    rr2 = r_OuterRim+r_Nut_Screw_M6+Walls;
    translate([0,0,-Walls-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls]){
        difference(){
            scale([rr0/rr1,1,1])cylinder(r=rr1,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol,$fn=Smoothness);
            translate([0,0,-tol])cylinder(r=r_OuterRim,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol+2*tol,$fn=Smoothness);
            translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,0])cylinder(r=r_Nut_Screw_M6+Walls, h=h_Nut_Screw_M6+2*Walls, $fn=Smoothness);
            mirror([0,1,0])translate([0,r_OuterRim+r_Nut_Screw_M6+Walls,0])cylinder(r=r_Nut_Screw_M6+Walls, h=h_Nut_Screw_M6+2*Walls, $fn=Smoothness);
        }
        difference(){
            scale([1,rr0/rr2,1])cylinder(r=rr1,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol,$fn=Smoothness);
            translate([0,0,-tol])cylinder(r=r_OuterRim,h=h_Stepper_Shaft+h_Shaft+h_Shaft_Pin+2*Walls-H_Gear+Walls-tol+2*tol,$fn=Smoothness);
            translate([r_OuterRim+r_LinearBearing+Walls,0,0])cylinder(r=r_LinearBearing+Walls,h=h_LinearBearing,$fn=Smoothness);
            mirror([1,0,0])translate([r_OuterRim+r_LinearBearing+Walls,0,0])cylinder(r=r_LinearBearing+Walls,h=h_LinearBearing,$fn=Smoothness);
        }
    }
    
}
if (Platform ==1)translate([0,0,z_plat])rotate([0,0,45]){
    difference(){
        Stepper_Holder();
        translate([0,0,-Walls-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls])rotate([0,0,45])translate([bevel_offset+2*tol-y_posi_Stepper_Shaft-7.5,0,-h_Stepper+Walls-3.1+1])rotate([0,0,270]){
           Stepper();
       }  
    }
    difference(){
       Platform(); 
       translate([0,0,-Walls-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls])rotate([0,0,45])translate([bevel_offset+2*tol-y_posi_Stepper_Shaft-7.5,0,-h_Stepper+Walls-3.1+1])rotate([0,0,270]){
           Stepper();
       }  
       translate([-100,-100,-100-16])cube([200,200,100]);
   }
}



q=-10;
aa = 10;
rrr = 10.5;
bevel_offset = -22;
if  (Gear ==2 && movement == 1)translate([0,0,z_plat])rotate([0,0,45]){
    difference(){
        rotate([0,0,$t*360])color([0.75,0.75,0])rotate([0,0,8])translate([0,0,-H_Gear])rotate([0,0,16])pfeilhohlrad (modul=2, zahnzahl=38, breite=10, randbreite=2, eingriffswinkel=20, schraegungswinkel=0);
        if (coupe2 ==1) rotate([0,0,-45])translate([-100,-100,-100])cube([100,200,200]);
    }
    translate([0,0,-H_Gear]){
        color([0.75,0.75,0])difference(){
            rotate([0,0,$t*360])Inner_Rim();
            if (coupe2 ==1) rotate([0,0,-45])translate([-100,-100,-100])cube([100,200,200]);
        }
        color([1,0.25,0.1])difference(){
            Outer_Rim();
            if (coupe1 == 1) rotate([0,0,-45])translate([-100,-100,-100])cube([100,200,200]);
        }
    }    
    
}

if (Gear == 1){
translate([0,0,z_plat])difference(){
    union(){
        rotate([0,0,45])rotate([0,0,6])translate([0,0,-H_Gear])rotate([0,0,1])pfeilhohlrad (modul=2, zahnzahl=38, breite=10, randbreite=2, eingriffswinkel=20, schraegungswinkel=0);
        translate([0,0,-H_Gear]){
            Inner_Rim();
            Outer_Rim();
        }
    }
    //translate([-100,-100,-100])cube([100,200,200]);
}
translate([0,0,-H_Gear])difference(){
    cylinder(r1=r_Dish+3*Walls,r2=r_Dish+2.5*Walls+3*tol,h=10-Walls+10*tol,$fn=Smoothness);
    cylinder(r1=r_Dish+2*Walls,r2=r_Dish+2.5*Walls+2*tol,h=10-Walls+10*tol,$fn=Smoothness);
}
}


// // // // // Gear Bevel // // // // // //

module SpurGear(modul, teeth, width, pressure_angle, helix_angle) {

// Dimension calculations	
d = modul * teeth;											    // Pitch circle diameter
r = d / 2;														// Pitch circle radius
alpha_stirn = atan(tan(pressure_angle)/cos(helix_angle));       // Helix angle in the face cut
db = d * cos(alpha_stirn);										// Base diameter
rb = db / 2;													// Base radius
da = (modul <1)? d + modul * 2.2 : d + modul * 2;				// Tip diameter
ra = da / 2;													// Tip radius
c =  (teeth <3)? 0 : modul/6;								    // Head game
df = d - 2 * (modul + c);										// Root Diameter
rf = df / 2;													// Root radius
rho_ra = acos(rb/ra);											// maximum involute angle
rho_r = acos(rb/r);												// Involute angles on the pitch circle
phi_r = grad(tan(rho_r)-radian(rho_r));							// Angle to the point of the involute on the pitch circle
gamma = rad*width/(r*tan(90-helix_angle));			        	// Torsion angle for extrusion
gear_step = rho_ra/16;											// Involute is divided into 16 pieces
tau = 360/teeth;												// Pitch angle
	
// Drawing
union(){
	rotate([0,0,-phi_r-90*(1+clearance)/teeth]){																	
		linear_extrude(height = width, twist = gamma){
			difference(){
				union(){
					bevel_width = (180*(1+clearance))/teeth+2*phi_r;
					circle(rf);											
					for (rot = [0:tau:360]){
						rotate (rot){								
							polygon(concat(	[[0,0]], [for (rho = [0:gear_step:rho_ra]) pol_to_cart(ev(rb,rho))], [pol_to_cart(ev(rb,rho_ra))], [for (rho = [rho_ra:-gear_step:0]) pol_to_cart([ev(rb,rho)[0], bevel_width-ev(rb,rho)[1]]) ]	));
						}
					}
				}			
			}
		}
	}
}
}

module ArrowWheel(modul, teeth, width, pressure_angle, helix_angle){
width = width/2;
d = modul * teeth;											
r = d / 2;														
c =  (teeth <3)? 0 : modul/6;								
df = d - 2 * (modul + c);									
rf = df / 2;													
	
translate([0,0,width])union(){
		SpurGear(modul, teeth, width, pressure_angle, helix_angle);		// untere Hälfte
		mirror([0,0,1])SpurGear(modul, teeth, width, pressure_angle, helix_angle);	// obere Hälfte
}
}

r_BevelHub = 4/2;
module BevelHub(){
    translate([0,0,-tol])cylinder(r=r_BevelHub,h=H_Gear+2*tol,$fn=6);
}

ratio = 30/8;
if (Gear_Bevel==2 && movement ==1)translate([0,-7.5,z_plat-Walls])rotate([0,0,90])color([0.1,0.1,1]){  
    difference(){
        translate([bevel_offset++2*tol,0,-H_Gear])rotate([0,0,$t*360*ratio-11])pfeilrad (modul=2, zahnzahl=8, breite=10, bohrung=5+2, nabendicke=8, nabendurchmesser=2, eingriffswinkel=20, schraegungswinkel=0, optimiert=true);
        translate([bevel_offset+2*tol,0,-H_Gear])BevelHub();
        translate([-100,-100,-TOL])cube([200,200,200]);
    }
    
    translate([bevel_offset+2*tol,0,-H_Gear])rotate([0,0,$t*360*ratio])color([0.1,0.1,1])difference(){
        cylinder(r=5,h=H_Gear-TOL, $fn=Smoothness);
        intersection(){
                translate([0,0,-tol])cylinder(r=r_Shaft_Pin+tol,h=H_Gear-TOL+2*tol,$fn=Smoothness);
                translate([-r_Shaft_pin-tol,-r_Shaft_Pin-tol,-tol])cube([2*r_Shaft_pin+2*tol,2*r_Shaft_Pin+2*tol,H_Gear-TOL+2*tol]);   
            }
    }
}   

if (Gear_Bevel==1)translate([0,0-7.5,z_plat])rotate([0,0,90]){
    difference(){
        //translate([bevel_offset,0,-H_Gear])rotate([0,0,rrr])ArrowWheel (modul=Module, teeth=8, width=H_Gear, pressure_angle=pressure_angle, helix_angle=helix_angle+aa);
        translate([bevel_offset++2*tol,0,-H_Gear])rotate([0,0,0])pfeilrad (modul=2, zahnzahl=8, breite=10, bohrung=5+2, nabendicke=8, nabendurchmesser=2, eingriffswinkel=20, schraegungswinkel=0, optimiert=true);
        translate([bevel_offset+2*tol,0,-H_Gear])BevelHub();
        translate([-100,-100,-TOL])cube([200,200,200]);
        //translate([-100,-100,q*$t])cube([200,200,200]);
    }
    
    translate([bevel_offset+2*tol,0,-H_Gear])difference(){
        cylinder(r=5,h=H_Gear-TOL, $fn=Smoothness);
        intersection(){
                translate([0,0,-tol])cylinder(r=r_Shaft_Pin+tol,h=H_Gear-TOL+2*tol,$fn=Smoothness);
                translate([-r_Shaft_pin-tol,-r_Shaft_Pin-tol,-tol])cube([2*r_Shaft_pin+2*tol,2*r_Shaft_Pin+2*tol,H_Gear-TOL+2*tol]);
                
            }
    }
}


// // // // // Stepper motor // // // // // //


// Stepper motor measurements
    r_M35 = 3.5/2;                   // M3.5 Bolt radius
    r_Stepper = 28/2+tol;
    h_Stepper = 19+tol;
    x_Stepper_Attach = 35+2*tol;
    y_Stepper_Attach = 7+tol;
    z_Stepper_Attach = 0.85+tol;
    x_Stepper = 17.6+2*tol;
    y_Stepper = 17.1;
    r_Stepper_Shaft = 9/2+tol;
    h_Stepper_Shaft = 1.5;
    r_Shaft_Pin = 5/2;
    r_Shaft_pin = 3/2;
    h_Shaft_Pin = 6;
    H_Shaft = 10;
    h_Shaft = H_Shaft-h_Shaft_Pin-h_Stepper_Shaft ;
    r_Shaft = 9/2;
    y_posi_Stepper_Shaft = 8;

module Stepper(){
    difference(){
        union(){
            cylinder(r=r_Stepper, h=h_Stepper, $fn=Smoothness);
            translate([-x_Stepper_Attach/2,-y_Stepper_Attach/2,h_Stepper-z_Stepper_Attach])cube([x_Stepper_Attach,y_Stepper_Attach,z_Stepper_Attach]);
            translate([-x_Stepper_Attach/2,0,h_Stepper-z_Stepper_Attach])cylinder(r=y_Stepper_Attach/2, h=z_Stepper_Attach, $fn=Smoothness);
            translate([x_Stepper_Attach/2,0,h_Stepper-z_Stepper_Attach])cylinder(r=y_Stepper_Attach/2, h=z_Stepper_Attach, $fn=Smoothness);
            translate([0,y_posi_Stepper_Shaft,h_Stepper])cylinder(r=r_Stepper_Shaft,h=h_Stepper_Shaft,$fn=Smoothness);
            translate([-x_Stepper/2,-y_Stepper-Walls,0])cube([x_Stepper,y_Stepper+Walls,h_Stepper]);
            
            translate([0,y_posi_Stepper_Shaft,h_Stepper+h_Stepper_Shaft])cylinder(r=r_Shaft_Pin,h=h_Shaft,$fn=Smoothness);
            intersection(){
                translate([0,y_posi_Stepper_Shaft,h_Stepper+h_Stepper_Shaft+h_Shaft])cylinder(r=r_Shaft_Pin,h=h_Shaft_Pin,$fn=Smoothness);
                translate([-r_Shaft_Pin,y_posi_Stepper_Shaft-r_Shaft_pin,h_Stepper+h_Stepper_Shaft+h_Shaft])cube([2*r_Shaft_Pin,2*r_Shaft_pin,h_Shaft_Pin]);
            }
        }
        translate([-x_Stepper_Attach/2,0,h_Stepper-z_Stepper_Attach])cylinder(r=r_M35, h=z_Stepper_Attach, $fn=Smoothness);
        translate([x_Stepper_Attach/2,0,h_Stepper-z_Stepper_Attach])cylinder(r=r_M35, h=z_Stepper_Attach, $fn=Smoothness);
    }
}   
        
        
if ( Stepper == 1){
    translate([0,0,z_plat+1-Walls])rotate([0,0,0])translate([0,bevel_offset-7.25-y_posi_Stepper_Shaft,-h_Stepper-h_Stepper_Shaft-h_Shaft-h_Shaft_Pin-Walls-Walls-tol])Stepper();
}




r_CameraHolder = 54.5/2;
r_Filter = 55/2;
r_filter = 52/2;
x_pin = 2;
y_pin = 3;
module CameraHolder(){
difference(){
    cylinder(r=r_CameraHolder+Walls,h=2*Walls,$fn=Smoothness);
    translate([0,0,Walls])cylinder(r=r_CameraHolder+tol,h=Walls+tol,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_CameraHolder-Walls+tol,h=2*Walls+tol,$fn=Smoothness);
    intersection(){
        translate([0,0,-tol])cylinder(r=r_CameraHolder+tol,h=2*Walls+tol,$fn=Smoothness);
        rotate([0,0,-90])translate([r_CameraHolder,r_CameraHolder,-tol])rotate([0,0,45])scale([1.5,1,1])cylinder(r=r_CameraHolder,h=2*Walls,$fn=4);
    }
}

for ( i =[0:3]){
    rotate([0,0,i*90+22.5])translate([-x_pin/2,r_CameraHolder-y_pin,Walls])cube([x_pin,y_pin,Walls]);
}
}

module FilterHolder(){
difference(){
    cylinder(r=r_Filter+Walls,h=2*Walls,$fn=Smoothness);
    translate([0,0,Walls])cylinder(r=r_Filter+tol,h=Walls+tol,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_filter+tol,h=2*Walls+tol,$fn=Smoothness);
}
}

r_Camera = 15/2;
z_Camera = 15;
z_IR_Ring = 12;
z_USB = 10;
Camera_Attach = 5*Walls;
module Recording(){
FilterHolder();
translate([0,0,z_Camera])CameraHolder();
difference(){
    union(){
        translate([-r_Filter-Walls,-Walls/2,0])cube([Walls,Walls,z_Camera+2*Walls]);
        rotate([0,0,-90])translate([-r_CameraHolder-Walls,-Walls/2,0])cube([Walls,Walls,z_Camera+2*Walls]);
        rotate([0,0,180])translate([-r_CameraHolder-Walls,-Walls/2,0])cube([Walls,Walls,z_Camera+2*Walls]);
    }
    translate([0,0,-tol])cylinder(r=r_CameraHolder+tol,h=20*Walls+tol,$fn=Smoothness); 
}


translate([0,0,z_Camera+2*Walls])difference(){
    translate([-r_CameraHolder-Camera_Attach,x_Alu/2-Walls,-2*Walls])cube([2*r_CameraHolder+2*Camera_Attach,x_Alu+2*Walls,z_IR_Ring+Walls+x_Alu+2*Walls+z_USB]);
    
    translate([-r_CameraHolder-Camera_Attach-tol,x_Alu/2-tol,z_IR_Ring+Walls+z_USB-tol])cube([2*r_CameraHolder+2*Camera_Attach+2*tol,x_Alu+2*tol,x_Alu+Walls]);
    translate([0,0,-2*Walls-tol])cylinder(r=r_CameraHolder+Walls,h=x_Alu+Walls+z_IR_Ring+2*Walls+2*tol+z_USB,$fn=Smoothness);
    
    translate([-r_CameraHolder-Camera_Attach/2,x_Alu/2-Walls-tol,z_IR_Ring+Walls+z_USB+x_Alu/2])rotate([-90,0,0])cylinder(r=M3,h=x_Alu+2*Walls+2*tol,$fn=60);
    mirror([1,0,0])translate([-r_CameraHolder-Camera_Attach/2,x_Alu/2-Walls-tol,z_IR_Ring+Walls+z_USB+x_Alu/2])rotate([-90,0,0])cylinder(r=M3,h=x_Alu+2*Walls+2*tol,$fn=60);
    }
    
    

    
}

if (Camera == 1 ) translate([0,0,camera_height-z_Camera-2*Walls-tol-z_IR_Ring-Walls-z_USB])Recording();
if (IR_Ring == 1) translate([0,0,camera_height-z_IR_Ring-Walls-z_USB])rotate([180,0,0])IR_Ring();
if (IR_Filter == 1)translate([0,0,camera_height-z_Camera-2*Walls-tol-z_IR_Ring-z_USB])IR_Filter();


module IR_Ring(){
difference(){
    color([0,0,0])cylinder(r=r_CameraHolder,h=1.5,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_Camera,h=Walls,$fn=Smoothness);
    for ( i =[0:3]){
        rotate([0,0,i*90])translate([-x_pin/2,r_CameraHolder-y_pin,-tol])cube([x_pin,y_pin,Walls]);
        rotate([0,0,i*90])translate([0,r_CameraHolder-y_pin,-tol])cylinder(r=x_pin/2,h=Walls,$fn=60);
    }
}
for( i = [0:11]){
    %rotate([0,0,i*(360/13)])translate([14,0,1.5])LED();
}
for (i = [0:3]){
    for (j = [1:3]){
        %rotate([0,0,i*90+j*90/4])translate([22,0,1.5])LED();    
    }
}
translate([0,0,-z_IR_Ring])IR_Camera();
}

x_Cam = 38;
y_Cam = x_Cam;
z_Cam = 1.5;
module IR_Camera(){
    color([0,0,0])translate([-x_Cam/2,-y_Cam/2,0])cube([x_Cam,y_Cam,z_Cam]);
    color([0.1,0.1,0.1])translate([0,0,z_Cam])cylinder(r=x_Cam/2-Walls,h=7-z_Cam,$fn=60);
    difference(){
        color([0.1,0.1,0.1])translate([0,0,7])cylinder(r=r_Camera,h=15,$fn=60);
        translate([0,0,7-tol])cylinder(r=r_Camera-Walls,h=15+2*tol,$fn=60);
    }
    for ( i = [0:3]){
        color([0.5,0.6,0])rotate([0,0,i*90+45])translate([20,0,z_Cam])cylinder(r=1,h=z_IR_Ring,$fn=60);
    }
}




module IR_Filter(){
    color([0.2,0,0])cylinder(r=r_Filter,h=Walls,$fn=Smoothness);
}











//
//difference(){
//    cylinder(r=r_Dish+Walls,h=Walls,$fn=Smoothness);
//    cylinder(r=r_Dish+tol,h=Walls,$fn=Smoothness);
//}
//
//
//
//
//
//
qqq = 17;
zzzz = 50;
hhh = zzzz+Alu2+x_Alu;
xxx = tan(qqq)*hhh+R_LED+Walls;
yyy = xxx;
rrr = 6/2+tol;
echo(r_LED);
echo(R_LED);
echo(rrr);
ppp = 5;
www = 30;
nLED = 4;
module IR_Illumination(){

 
difference(){
    intersection(){
        translate([-xxx,-yyy,-hhh+zzzz])cube([2*xxx,2*yyy,2*Walls+ppp]);
    
        translate([0,0,zzzz])difference(){
            sphere(r=hhh,$fn=Smoothness);
            sphere(r=hhh-1.5,$fn=Smoothness);
        }
    }
    translate([0,0,zzzz])rotate([180,0,0]){
        #cylinder(r=rrr,h=hhh,$fn=60);
        for (j = [0:4]){
            for (i = [0:nLED-1]){
                #rotate([0,0,360/nLED*i+360/16-3])rotate([0,0,j*360/5/nLED])rotate([0,-qqq,0])cylinder(r=rrr,h=hhh,$fn=60);
            }
            for (i = [0:2]){
                #rotate([0,0,i*360/3])rotate([0,0,j*360/4])rotate([0,-qqq+5,0])cylinder(r=rrr,h=hhh,$fn=60);
            }
            for (i = [0:1]){
                #rotate([0,0,i*360/2+20])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                #rotate([0,0,i*360/2-20])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                #rotate([0,0,i*360/2+20+90])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                #rotate([0,0,i*360/2-20-90])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
            }
        } 
    }   
}

translate([-xxx,-yyy,-hhh+zzzz])cube([Walls,Walls,www+ppp]);
translate([-xxx,yyy-Walls,-hhh+zzzz])cube([Walls,Walls,www+ppp]);
translate([xxx-Walls,-yyy,-hhh+zzzz])cube([Walls,Walls,www+ppp]);
translate([xxx-Walls,yyy-Walls,-hhh+zzzz])cube([Walls,Walls,www+ppp]);
translate([-xxx,-Walls/2,-hhh+zzzz+2*Walls+ppp])cube([Walls,Walls,www-2*Walls]);
translate([xxx-Walls,-Walls,-hhh+zzzz+2*Walls+ppp])cube([Walls,Walls,www-2*Walls]);
translate([-Walls,-yyy,-hhh+zzzz+2*Walls+ppp])cube([Walls,Walls,www-2*Walls]);
translate([-Walls,yyy-Walls,-hhh+zzzz+2*Walls+ppp])cube([Walls,Walls,www-2*Walls]);

translate([-xxx,-yyy,-hhh+zzzz+www+ppp])difference(){
    cube([2*xxx,2*yyy,Walls]);
    translate([2*Walls,2*Walls,-tol])cube([2*xxx-4*Walls,2*yyy-4*Walls,Walls+2*tol]);
}
az = 29;
za = 43;
for (i = [0:3]){
    rotate([0,0,90*i]){
        translate([-xxx,-xxx,-Alu2-x_Alu])cube([2*xxx,Walls,2*Walls+ppp]);
        difference(){
            union(){
                translate([-xxx+Walls,-xxx+Walls-2,-Alu2-x_Alu])rotate([0,0,45])cube([xxx+Walls+9,Walls,2*Walls+ppp]);
                translate([0,0,-Alu2-x_Alu])difference(){
                    cylinder(r=az,h=2*Walls+ppp,$fn=Smoothness);
                    cylinder(r=az-Walls,h=2*Walls+ppp,$fn=Smoothness);
                }
                translate([0,0,-Alu2-x_Alu])difference(){
                    cylinder(r=za,h=2*Walls+ppp,$fn=Smoothness);
                    cylinder(r=za-Walls,h=2*Walls+ppp,$fn=Smoothness);
                }
            }
            translate([0,0,zzzz])sphere(r=hhh-1.5,$fn=Smoothness);
        }
        difference(){
            translate([-Alu3/2-x_Alu/2,-2*Walls,-Alu2-x_Alu])cube([Alu3/2-xxx+x_Alu/2+Walls,4*Walls,Walls]);
            translate([-Alu3/2,0,-Alu2-x_Alu-tol])cylinder(r=M3,h=2*Walls,$fn=60);
        }
    }
}

}

if ( IR_Illumination ==1)IR_Illumination();
    
// Adjustment Screw Bearing mesurements
    R_Bearing = 11.2/2+tol/2;        // Adjustment Screw Bearing outer radius
    r_bearing = 10/2+tol/2;          // Adjustment Screw Bearing inner radius
    h_Bearing = 3;                   // Adjustment Screw Bearing width
    z_Flange = 0.75;                  // Adjustment Screw Bearing Flange width
module Bearing(){
    cylinder(r=R_Bearing, h=z_Flange, $fn=Smoothness);
    translate([0,0,z_Flange])cylinder(r=r_bearing,h=h_Bearing-z_Flange,$fn=Smoothness);
}

X = 2;

module Illu_LED(){



    translate([0,0,zzzz])rotate([180,0,0]){
        //if ( X ==1)translate([0,0,hhh+1])rotate([180,0,0])LED();
        //if ( X ==2)cylinder(r=rrr,h=hhh,$fn=60);
        for (j = [4]){
            for (i = [0:nLED-1]){
                if ( X ==1)rotate([0,0,360/nLED*i+360/16-3])rotate([0,0,j*360/5/nLED])rotate([0,-qqq,0])translate([0,0,hhh+1])rotate([180,0,0])LED();;
                if ( X ==2)rotate([0,0,360/nLED*i+360/16-3])rotate([0,0,j*360/5/nLED])rotate([0,-qqq,0])cylinder(r=rrr,h=hhh,$fn=60);
            }
//            for (i = [0:3]){
//                if ( X ==1)rotate([0,0,i*360/4])rotate([0,0,j*360/3])rotate([0,-qqq+5,0])translate([0,0,hhh+1])rotate([180,0,0])LED();
//                if ( X ==2)rotate([0,0,i*360/4])rotate([0,0,j*360/3])rotate([0,-qqq+5,0])cylinder(r=rrr,h=hhh,$fn=60);
//            }
            for (i = [0:1]){
                if(X==1){
                    //rotate([0,0,i*360/2+20])rotate([0,-qqq+10,0])translate([0,0,hhh+1])rotate([180,0,0])LED();
                    rotate([0,0,i*360/2-20])rotate([0,-qqq+10,0])translate([0,0,hhh+1])rotate([180,0,0])LED();
                    //rotate([0,0,i*360/2+20+90])rotate([0,-qqq+10,0])translate([0,0,hhh+1])rotate([180,0,0])LED();
                    rotate([0,0,i*360/2-20-90])rotate([0,-qqq+10,0])translate([0,0,hhh+1])rotate([180,0,0])LED();
                    
            }
                if(X==2){
                    //rotate([0,0,i*360/2+20])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                    rotate([0,0,i*360/2-20])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                    //rotate([0,0,i*360/2+20+90])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                    rotate([0,0,i*360/2-20-90])rotate([0,-qqq+10,0])cylinder(r=rrr,h=hhh,$fn=60);
                }
            }
        } 
    }   
    
}
//Illu_LED();


hA = 10;
hLED = 75;
zA = hA + hLED;
xA = (Alu3 - x_Alu)/2;
HA = sqrt(xA*xA + zA*zA)+25+5; 
aA = atan(xA/zA);
nLEDA = 8;
module new(){
difference(){
    translate([-Alu3/2,-Alu3/2-x_Alu/2+Walls,-hLED-25])cube([Alu3,x_Alu-2*Walls,x_Alu]);
    
    for (i=[0:nLEDA-1]){
        translate([0,0,hA])rotate([180,0,0])rotate([0,0,i*360/nLEDA])rotate([0,aA,22.5])cylinder(r=2,h=HA,$fn=60);
        translate([0,0,hA])rotate([180,0,0])rotate([0,0,i*360/nLEDA])rotate([0,aA,22.5])translate([0,0,HA])rotate([180,0,0])LED();
    }
}


}





qwerty = 10;


module try3(){

try2();
//translate([0,0,zzz+1.5])rotate([180,0,0])try();
difference(){
    cylinder(r=r_CameraHolder+qwerty,h=2*Walls,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_CameraHolder,h=2*Walls+2*tol,$fn=Smoothness);
    for( i =[0:3]){
        rotate([0,0,90*i])translate([(r_CameraHolder+qwerty)-(qwerty/2)+1,0,-tol])cylinder(r=M3,h=2*Walls+2*tol,$fn=60);
        rotate([0,0,90*i])translate([(r_CameraHolder+qwerty)-(qwerty/2)+1,0,Walls])cylinder(r=5.4/2,h=2*Walls+2*tol,$fn=60);
    }
}
}

zzz = 10;

module try(){
    difference(){
    color([0,0,0])cylinder(r=r_CameraHolder,h=1.5,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_Camera,h=Walls,$fn=Smoothness);
    for ( i =[0:3]){
        rotate([0,0,i*90])translate([-x_pin/2,r_CameraHolder-y_pin,-tol])cube([x_pin,y_pin,Walls]);
        rotate([0,0,i*90])translate([0,r_CameraHolder-y_pin,-tol])cylinder(r=x_pin/2,h=Walls,$fn=60);
    }
}
for( i = [0:11]){
    %rotate([0,0,i*(360/13)])translate([14,0,1.5])LED();
}
for (i = [0:3]){
    for (j = [1:3]){
        %rotate([0,0,i*90+j*90/4])translate([22,0,1.5])LED();    
    }
}}


module try2(){
difference(){
    cylinder(r=r_CameraHolder+Walls,h=zzz+Walls,$fn=Smoothness);
    translate([0,0,zzz])cylinder(r=r_CameraHolder+tol,h=zzz+Walls+tol,$fn=Smoothness);
    translate([0,0,-tol])cylinder(r=r_CameraHolder-Walls+tol,h=zzz+Walls+tol,$fn=Smoothness);
    intersection(){
        translate([0,0,-tol+zzz-Walls])cylinder(r=r_CameraHolder+tol,h=2*Walls+tol,$fn=Smoothness);
        rotate([0,0,-90])translate([r_CameraHolder,r_CameraHolder,-tol])rotate([0,0,45])scale([1.5,1,1])cylinder(r=r_CameraHolder,h=zzz+2*Walls,$fn=4);
    }
}
for ( i =[0:2]){
    rotate([0,0,i*90+22.5-90])translate([-x_pin/2,r_CameraHolder-y_pin,zzz])cube([x_pin,y_pin+tol,Walls]);
}
}




