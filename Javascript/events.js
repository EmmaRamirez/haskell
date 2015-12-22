event.screenX;
event.screenY;

event.clientX;
event.clientY;

event.pageX;
event.pageY;

addEventListener("touchend", function() {
  alert("Thank you!");
});

// touchmove, touchenter, touchleave, touchcancel

li.addEventListener("click", function(event) {
  console.log("Clicked on ul");
  event.stopProopagation();
}, true);
