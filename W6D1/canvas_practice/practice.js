document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.width = 500;
  canvas.height = 500;
  const ctx = canvas.getContext('2d');

  ctx.fillStyle = "blue";
  ctx.fillRect(0, 0, 500, 500);
  ctx.beginPath();
  ctx.arc(250, 250, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'orange';
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = 'purple';
  ctx.fill();


  ctx.arc(200, 000, 500, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'orange';
  ctx.lineWidth = 5;
  ctx.stroke();

  ctx.arc(350, 350, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'orange';
  ctx.lineWidth = 5;
  ctx.stroke();
});
