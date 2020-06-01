<!DOCTYPE html>
<!-- saved from url=(0063)https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jQuery json-viewer</title>

    <script src="./jQuery json-viewer_files/jquery-3.3.1.min.js.下载"></script>
    <script src="./jQuery json-viewer_files/jquery.json-viewer.js.下载"></script>
    <link href="./jQuery json-viewer_files/jquery.json-viewer.css" type="text/css" rel="stylesheet">

    <style type="text/css">
body {
  margin: 0 100px;
  font-family: sans-serif;
}
p.options label {
  margin-right: 10px;
}
p.options input[type=checkbox] {
  vertical-align: middle;
}
textarea#json-input {
  width: 100%;
  height: 200px;
}
pre#json-renderer {
  border: 1px solid #aaa;
}
    </style>

    <script>
$(function() {
  function renderJson() {
    try {
      var input = eval('(' + $('#json-input').val() + ')');
    }
    catch (error) {
      return alert("Cannot eval JSON: " + error);
    }
    var options = {
      collapsed: $('#collapsed').is(':checked'),
      rootCollapsable: $('#root-collapsable').is(':checked'),
      withQuotes: $('#with-quotes').is(':checked'),
      withLinks: $('#with-links').is(':checked')
    };
    $('#json-renderer').jsonViewer(input, options);
  }

  // Generate on click
  $('#btn-json-viewer').click(renderJson);

  // Generate on option change
  $('p.options input[type=checkbox]').click(renderJson);

  // Display JSON sample on page load
  renderJson();
});
    </script>
  </head>
  <body>
    <h1><a href="https://github.com/abodelot/jquery.json-viewer">jQuery json-viewer</a></h1>
    <textarea id="json-input" autocomplete="off">{
  "id": 1001,
  "type": "donut",
  "name": "Cake",
  "description": "https://en.wikipedia.org/wiki/Doughnut",
  "price": 2.55,
  "available": {
    store: 42,
    warehouse: 600
  },
  "toppings": [
    { "id": 5001, "type": "None" },
    { "id": 5002, "type": "Glazed" },
    { "id": 5005, "type": "Sugar" },
    { "id": 5003, "type": "Chocolate" },
    { "id": 5004, "type": "Maple" }
  ],
  "uuids": [
    "826b23ce-2669-4122-981f-3e2e4429159d",
    "e32111a0-6a87-49ab-b58f-a01bf8d28ba0",
    "c055a894-698e-41c0-b85f-7510a7351d9d",
  ],
}</textarea>
    <p class="options">
      Options:
      <label title="Generate node as collapsed">
        <input type="checkbox" id="collapsed">Collapse nodes
      </label>
      <label title="Allow root element to be collasped">
        <input type="checkbox" id="root-collapsable" checked="">Root collapsable
      </label>
      <label title="Surround keys with quotes">
        <input type="checkbox" id="with-quotes">Keys with quotes
      </label>
      <label title="Generate anchor tags for URL values">
        <input type="checkbox" id="with-links" checked="">
        With Links
      </label>
    </p>
    <button id="btn-json-viewer" title="run jsonViewer()">Transform to HTML</button>
    <pre id="json-renderer" class="json-document"><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle"></a>{<ul class="json-dict"><li>id: <span class="json-literal">1001</span>,</li><li>type: <span class="json-string">"donut"</span>,</li><li>name: <span class="json-string">"Cake"</span>,</li><li>description: <a href="https://en.wikipedia.org/wiki/Doughnut" class="json-string" target="_blank">https://en.wikipedia.org/wiki/Doughnut</a>,</li><li>price: <span class="json-literal">2.55</span>,</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle">available</a>: {<ul class="json-dict"><li>store: <span class="json-literal">42</span>,</li><li>warehouse: <span class="json-literal">600</span></li></ul>},</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle">toppings</a>: [<ol class="json-array"><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle"></a>{<ul class="json-dict"><li>id: <span class="json-literal">5001</span>,</li><li>type: <span class="json-string">"None"</span></li></ul>},</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle"></a>{<ul class="json-dict"><li>id: <span class="json-literal">5002</span>,</li><li>type: <span class="json-string">"Glazed"</span></li></ul>},</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle"></a>{<ul class="json-dict"><li>id: <span class="json-literal">5005</span>,</li><li>type: <span class="json-string">"Sugar"</span></li></ul>},</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle"></a>{<ul class="json-dict"><li>id: <span class="json-literal">5003</span>,</li><li>type: <span class="json-string">"Chocolate"</span></li></ul>},</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle"></a>{<ul class="json-dict"><li>id: <span class="json-literal">5004</span>,</li><li>type: <span class="json-string">"Maple"</span></li></ul>}</li></ol>],</li><li><a href="https://rawgit.com/abodelot/jquery.json-viewer/master/demo.html" class="json-toggle">uuids</a>: [<ol class="json-array"><li><span class="json-string">"826b23ce-2669-4122-981f-3e2e4429159d"</span>,</li><li><span class="json-string">"e32111a0-6a87-49ab-b58f-a01bf8d28ba0"</span>,</li><li><span class="json-string">"c055a894-698e-41c0-b85f-7510a7351d9d"</span></li></ol>]</li></ul>}</pre>


</body></html>