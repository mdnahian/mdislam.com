var server = require('diet');
var app = server();

var ect = require('ect')({ root  : app.path+'/views/html/', watch: true, ext: '.html' });
app.view('html', ect.render);

var stat  = require('diet-static')({ path: app.path+'/views/' });
app.view('file', stat);

app.listen('0.0.0.0');

app.get('/', function($){
	$.end();
});

app.get('/privacy', function($){
	$.end();
});

app.get('/terms', function($){
	$.end();
});

app.get('/feedback', function($){
	$.end();
});
