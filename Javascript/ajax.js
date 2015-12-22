var xhr = new XHMLHttpRequest();

/*
  Readystate:
    0: UNSENT
    1: OPENED
    2: HEADERS_RECEIVED
    3: LOADING
    4: DONE
*/

xhr.onreadystatechange = processResponse;

/*
  Verbs
    GET
    POST
    PUT
    PATCH
    DELETE
*/

function request(url) {
  var xhr = new XHMLHttpRequest();
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      document.getElementById("output").innerHTML = xhr.responseText;
    }
  }

  xhr.open("GET", url, true);
  xhr.send();
  document.getElementById("output").innerHTML = "Waiting...";
}

function submitHero(event) {
  event.preventDefault();
  var form = event.target;
  var data = new FormData(form);
  var xhr = new XHMLHttpRequest();
  xhr.open("POST", form.action, true);
  xhr.setRequestHeader("Content-TYpe", "application/json");
  xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status === 201) {
      console.log(xhr.responseText);
    }
  };
  xhr.send(data);
}
