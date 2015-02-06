module frame_square_negative(x,y) {
  translate([0,0,-0.1]) union() {
    difference() {
      translate([2.4,2.4,0]) cube([25*x-4.8,25*y-4.8,2.3]);
      translate([3.8,3.8,-0.1]) cube([25*x-7.6,25*y-7.6,10]);
    }
    echo(((x-1)%2*12.5) + (x>2 ? 62.5 : 12.5));
    #translate([(x-1)%2*12.5+12.5,(y-1)%2*12.5+12.5,0]) cylinder(1.5875+.3,4.7625/2+.1,4.7625/2+.1, $fn=50);
    if (x > 2 || y > 2) {
      #translate([((x-1)%2*12.5) + (x>2 ? 62.5 : 12.5),((y-1)%2*12.5) + (y>2 ? 62.5 : 12.5),0]) cylinder(1.5875+.3,4.7625/2+.1,4.7625/2+.1, $fn=50);
    }
  }
}

module frame_curve_negative(x,y) {
  translate([0,0,-0.1]) difference() {
    intersection() {
      translate([2.4,2.4,0]) cube([25*x-4.8,25*y-4.8,2.3]);
      translate([x*25,0,-.1]) scale([1,(y*25-2.4)/(x*25-2.4),1]) cylinder(10,25*x-2.4,25*x-2.4,$fn=200);
    }
    intersection() {
      translate([3.8,3.8,-0.1]) cube([25*x-7.6,25*y-7.6,10]);
      translate([x*25,0,-.1]) scale([1,(y*25-3.8)/(x*25-3.8),1]) cylinder(10,25*x-3.8,25*x-3.8,$fn=200);
    }
  }
}
