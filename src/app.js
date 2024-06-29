const express = require('express');
const { engine } = require('express-handlebars');
const myconnection = require('express-myconnection');
const mysql = require('mysql2');
const path = require('path');
const bodyParser = require('body-parser');
const session = require('express-session');
const passport = require('passport');
const MySQLStore = require('express-mysql-session')(session);
const {PORT} = require ('./config');


const loginRoutes = require('./routes/login');
const itemsRoutes = require('./routes/items');
const reservasRoutes = require('./routes/reservas');

const { database } = require('./keys');

require('./lib/passport');

var Handlebars = require("handlebars");
var MomentHandler = require("handlebars.moment");

MomentHandler.registerHelpers(Handlebars);

const app = express();
app.set('port', PORT);


app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(bodyParser.json());


app.set('views', __dirname + '/views');
app.engine('.hbs', engine({
  extname: '.hbs',
  helpers: require('./lib/handlebars')
}));
app.set('view engine', 'hbs');


app.use(myconnection(mysql,database
,'pool'))


app.use(session({
  secret: 'secret',
	resave: true,
	saveUninitialized: true,
  store: new MySQLStore(database)
}));

app.use(passport.initialize());
app.use(passport.session());


app.use((req,res,next)=>{
	app.locals.user = req.user;
	next();
});

app.listen(app.get('port'), () => {
  console.log('Listening on port ', app.get('port'));
});


app.use('/', itemsRoutes);
app.use('/', loginRoutes);
app.use('/', reservasRoutes);



app.use(express.static(path.join(__dirname, 'public')));
//* crear formulario al registrarse los Alumnos */
//* franco_meloni@outlook.com ProClub1270* */