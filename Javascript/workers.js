var workers = new Worker('task.js');

worker.postMessage("Hello");

self.postMessage("Finished");

worker.addEventListener('message', function(event) {
  console.log(event.data);
}, false);
