function main()
{
  var resolution = 24; // increase to get smoother corners (will get slow!)
  
  var cube1 = CSG.roundedCube({center: [0,0,0], radius: [10,10,10], roundradius: 2, resolution: resolution});

  var sphere1 = CSG.sphere({center: [5, 5, 5], radius: 12, resolution: resolution });
  var sphere2 = sphere1.translate([12, 5, 0]);
  var sphere3 = CSG.sphere({center: [20, 0, 0], radius: 30, resolution: resolution });
  var addSphere = CSG.sphere({center: [10, 5, 10], radius: 5, resolution: resolution });
  var subSphere = CSG.sphere({ center: [-5, 10, 10], radius: 10, resolution: resolution });

  var result = cube1;
  result = result.union(sphere1);
  result = result.subtract(sphere2);
  result = result.intersect(sphere3);
  result = result.subtract(subSphere);
  result = result.union(addSphere);

  return result;
}

