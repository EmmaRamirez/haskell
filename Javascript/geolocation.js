if (navigator.geolocation) {
  navigator.geolocation.getCurrentPoistion(youAreHere);
}

function youAreHere(position) {
  alert("Latitude: " + position.coords.latitude + ", Longitude: " + position.coords.longitude);
}
