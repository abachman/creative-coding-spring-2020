// by Adam Bachman
osc(4, 0.4, 1)
  .diff(noise(5, 0.2).kaleid(7))
  .out()


// by Nelson Vera
// twitter: @nel_sonologia
osc(8,-0.5, 1)
  .color(-1.5, -1.5, -1.5)
  .blend(o0)
  .rotate(-0.5, -0.5)
  .modulate(
    shape(4).rotate(0.5, 0.5).scale(2).repeatX(2, 2).modulate(o0, () => mouse.x * 0.0005).repeatY(2, 2)
  ).out(o0)



// by Olivia Jack
// @_ojack_
osc(20, 0.01, 1.1)
	.kaleid(5)
	.color(2.83,0.91,0.39)
	.rotate(0, 0.1)
	.modulate(o0, () => mouse.x * 0.0003)
	.scale(1.01)
  .out(o0)



// Dreamy Diamond
// by Rangga Purnama Aji
// https://ranggapurnamaaji1.wixsite.com/portfolio
osc(7,-0.125).modulate(voronoi(1)).diff(voronoi(1).mult(gradient(-1).luma(0.125)))
  .luma(0.125)
  .add(shape(7, 0.5)
       .mult(voronoi(10,2).blend(o0).diff(gradient(1)).modulate(voronoi())))
  .scrollY(-0.1)
  .scrollX(0.125)
  .blend(o0)
  .blend(o0)
  .out()

