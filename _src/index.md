<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>afk napping</title>
    <!-- <link rel="stylesheet" href="https://fonts.xz.style/serve/inter.css"> -->
    <link href="https://fonts.googleapis.com/css2?family=Libre+Franklin:ital,wght@0,300;0,900;1,300;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@exampledev/new.css@1.1.2/new.min.css">
</head>
<body>

<header>

#  Hi, I'm Fabian &nbsp; 🧨🔥💥 a̸͑̿̀̍̆̒̈̏͑̓̎̽͂̉̓̂̃̇̀̿̽̃̋̍́̅̏̅́̅̈͐̾̑̉̓̈͘͝

<nav>

<!-- [one](2.html) / [two](2.html) / [three](2.html) -->

</nav>

</header>

[Blot](https://afknapping.blot.im/) · [Twitter](https://twitter.com/afknapping) · [Instagram](https://www.instagram.com/afknapping/) · [GitHub](https://github.com/afknapping)



<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.0.0/p5.js"></script>

<script>

var w = window.innerWidth;
var h = window.innerHeight;

function setup() {
//   createCanvas(710, 400, WEBGL);
//   createCanvas(windowWidth/2, windowHeight/2, WEBGL);
  canvas=createCanvas(w, h, WEBGL);


}

function draw() {
  background(190);

  noFill();
  stroke(255);
  push();
  translate(w/3, height * 0.35, h/3*-1);
  rotateY(millis() / 10000)
  rotateX(millis() / 16000)
  sphere(300);
  pop();
  console.log("drawed");

}

// function windowResized() {
//   resizeCanvas(windowWidth/2, windowHeight/2);
// }

window.onresize = function() {
  // assigns new values for width and height variables
  w = window.innerWidth;
  h = window.innerHeight;  
  canvas.size(w,h);
}
</script>



</body>
</html>

<style>

#defaultCanvas0 {
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

body {
  font-family: 'Libre Franklin', sans-serif;
}

</style>

