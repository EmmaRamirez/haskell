var obj = {
  name: "Emma"
};

var el = document.getElementById("textView");
dataBind(el, obj);
var field = document.getElementById("projection");
dataBind(field, obj);

function dataBind(domElement, obj) {
  var bind = domElement.getAttribute("bind").split(":");
  var domAttr = bind[0].trim();
  var itemAttr = bind[1].trim();

  Object.observe(obj, function (change) {
    domElement[domAttr] = obj[itemAttr];
  });
  new MutationObserver(updateObj).observe(domElement, {
    attributes: true,
    childList: true,
    characterData: true
  });
  domElement.addEventListener("keyup", updateObj);
  domElement.addEventListener("click", updateObj);
  function updateObj() {
    obj[itemAttr] = domElement[domAttr];
  }
  domElement[domAttr] = obj[itemAttr];

}
