var createError = require('http-errors');
var express = require('express');
var bcrypt = require('bcryptjs');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const mysql = require('mysql2');
const { check, validationResult } = require('express-validator');
var registerCheck = [
  check("firstname")
  .isAlpha().withMessage("First Name should only conain alphabetical characters")
  .notEmpty().withMessage("The first name should not remain empty")
  .trim()
  .isLength({min:0, max:100}).withMessage("First Name too long")
  .escape(),
  check("lastname")
  .isAlpha().withMessage("Last Name should only contain alphabetical characters")
  .notEmpty().withMessage("The last name should not remain empty")
  .trim()
  .escape()
  .isLength({min:0, max:100}).withMessage("Last Name too long"),
  check("email")
  .isEmail().withMessage( "Incorrect Email format")
  .notEmpty().withMessage("Email field should not remain empty")
  .normalizeEmail(),
  check("password", "Password should be at least 8 characters")
  .isLength({ min:8})
  .notEmpty(),
  check("password2", "Passwords Should be identical")
  .custom((value, { req }) => value === req.body.password)
  .notEmpty()
  .escape(),
  
  check('username', 'Username too long').isLength({min:0, max:100}).escape(),
];
var newMovieCheck = [
  check('description', 'Description should be max 220 characters')
  .isLength({min:0, max:220})
  .escape(),
  check('movie_name', 'Keep the movie name short lad !')
  .isLength({min:0, max:54})
  .escape(),
  check('year', 'Enter a valid date')
  .isNumeric({no_symbol:true})
  .escape(),
  check('year', 'Enter a valid date')
  .isInt({ min: 1000, max: 9999 })
  .escape(),
  check('runtime', 'Enter a valid number of minutes')
  .isLength({min:0, max:3})
  .escape(),
  check('image', 'Image link should be a valid https link to an image')
  .isURL()
  .escape()
]

var delMovieCheck = [
  check('movie_name', 'Keep the movie name short lad !').isLength({min:0, max:54}).escape(),

]

var searchCheck = [
  check('category', 'Invalid genre').isIn(['Action', 'Adventure', 'Animation', 'Biography', 'Comedy', 'Crime', 'Drama', 'Family', 'Fantasy', 'Film-Noir',"History","Horror", "Mystery","Romance","Sci-Fi","Sport","Thriller"]).escape(),
]
const db = mysql.createConnection({
  host: process.env.DB_HOST || 'localhost',    
  user: process.env.DB_USER || 'root', 
  password: process.env.DB_PASSWORD || '', 
  database: process.env.DB_NAME || 'db_movies',
  port: process.env.DB_PORT || 3306,
  ssl: process.env.DB_SSL ? {rejectUnauthorized: false} : false
});
const session = require('express-session');

// Connect to the database
db.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the MySQL database.');
});

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
const cors = require('cors');
app.use(cors()); 
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
  secret: 'lachainedecaractereslapluslonguequimevienneentete', 
  resave: false,           
  saveUninitialized: true, 
  cookie: { secure: false } 
}));
app.get('/', (req,res) => {
  if (req.session.user) {
  res.render('index', { user : req.session.user});
  }
  else {
  res.render('index');
  }
});
app.get('/movies.pug', (req,res) => {
  const query = 'SELECT * FROM movie_db'; 
  db.query(query, (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('movies', {user:req.session.user, movies:{}, errorstatus:'Error while fetching the movies'});
    }
    if (req.session.user) {
      res.render('movies', {movies : results, user : req.session.user});
    }
    else {
    res.render('movies', {movies : results});
    }
  });
});



app.post ('/submit-rating', (req,res) => {
  const {rating, movie_id,user_id} = req.body;
  const query = 'INSERT INTO ratings (rating, movie_id, user_id) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE rating = VALUES(rating);';
  db.query(query, [rating, movie_id, user_id, rating], (err,results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('movies', {user:req.session.user, movies : {}, errorstatus:'Could not add a rating, please refresh the page'});
      }
      res.status(200).send(); 
    });
});


app.get ('/search', (req,res) => {
  var {name, category} = req.query;
  var query = ''
  if (category === '*') {
    query = 'SELECT * FROM movie_db WHERE movie_name LIKE ?';
  }
  else {
    query = 'SELECT * FROM movie_db WHERE movie_name LIKE ? AND genre LIKE ?';
  }
  db.query(query, ['%' + name + '%', `%${category}%`], (err, results) =>
    {
      if (err) {
        console.error('Error executing query:', err.message);
        return res.status(500).render('movies', {user:req.session.user, movies:{}, errorstatus:'Invalid search parameters, please refresh the page'});
        }
        res.render('movies', {user:req.session.user, movies : results});
});
});

app.get('/update_rating'), (req,res) => {
  const {movie_id, user_id} = req.body;
  const query = 'SELECT * FROM ratings WHERE user_id = ? AND movie_id = ?';
  db.query(query, [movie_id, user_id], (err,results) =>
    {
      if (err) {
        console.error('Error executing query:', err.message);
        return res.status(500).send('Database query error');
        }
        res.send(results)
});
}
app.get('/admin.pug', (req,res) => {
  if (req.session.user && req.session.user.role == 'admin') {
  res.render('admin',{user:req.session.user, error: {msg:''}});
} else {
  res.redirect('/');
}
});

app.get('/quiz.pug', (req,res) => {
  
  res.render('quiz',{user:req.session.user, grade:'', errorstatus:''});


});

app.post('/submitQuiz', (req, res) => {
  try {
  const {q1,q2,q3,q4,q5,q6,q7,q8} = req.body;
  var note = 0;
  console.log(q1,q2,q3,q4)
  if (q1 === 'Quentin Tarantino') note += 1;
  if (q2 === 'Black Hawk Down') note += 1;
  if (q3 === 'The Departed') note += 1;
  if (q4 === 'Rebecca') note += 1;
  if (q5 === 'The Lion King') note += 1;
  if (q6 === 'The Blind Side') note += 1;
  if (q7 === 'The Shining') note += 1;
  if (q8 === 'M. Sijore') note += 1;
  return res.status(200).render('quiz',{ grade:`${note}/8`, errorstatus:''} );
  }catch (err) {
    console.error('Error processing quiz submission:', err.message);
    return res.status(500).render('quiz', {grade:'',errorstatus:'Could not submit the answers, please try again'});
  }
})
app.get('/profile.pug', (req,res) => {
  const query =   'SELECT m.*, r.rating AS user_rating FROM movie_db m LEFT JOIN ratings r ON m.movie_id = r.movie_id WHERE r.user_id = ?;'
  ; 
  db.query(query,[req.session.user.id], (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('profile', {movies: {}, user : req.session.user, errorstatus:'Error loading your favourite movies, please try to refresh the page'});
    }
    res.render('profile', {movies : results, user : req.session.user});
  });
});


app.get('/allRatings', (req,res) => {
  const query =   'SELECT m.*, r.rating AS user_rating FROM movie_db m LEFT JOIN ratings r ON m.movie_id = r.movie_id WHERE r.user_id = ?;'
  ; 
  db.query(query,[req.session.user.id], (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('profile', {movies:{}, user : req.session.user, errorstatus:'Problem loading the movies, please try to refresh the page'});
    }
    res.render('profile', {movies : results, user : req.session.user});
  });
});

app.get('/bestRatings', (req,res) => {
  const query =   'SELECT m.*, r.rating AS user_rating FROM movie_db m JOIN ratings r ON m.movie_id = r.movie_id WHERE r.user_id = ? ORDER BY r.rating DESC LIMIT 10;'; 
  db.query(query,[req.session.user.id], (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('profile', {movies:{}, user : req.session.user, errorstatus:'Problem loading the movies, please try to refresh the page'});
    }
    res.render('profile', {movies : results, user : req.session.user});
  });
});

app.get('/worstRatings', (req,res) => {
  const query =   'SELECT m.*, r.rating AS user_rating FROM movie_db m JOIN ratings r ON m.movie_id = r.movie_id WHERE r.user_id = ? ORDER BY r.rating ASC LIMIT 10;'
  ; 
  db.query(query,[req.session.user.id], (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('profile', {movies:{}, user : req.session.user, errorstatus:'Problem loading the movies, please try to refresh the page'});
    }
    res.render('profile', {movies : results, user : req.session.user});
  });
});

app.get('/deleteRating', (req,res) => {
  const movie_id = req.query.movie_id;
  const query = 'DELETE FROM ratings WHERE user_id = ? AND movie_id = ?;';
  db.query(query,[req.session.user.id, req.query.movie_id], (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('profile', {movies:{}, user : req.session.user, errorstatus:'Problem loading the movies, please try to refresh the page', error: {msg:''}} );
      }
      res.redirect('/profile.pug');
  });
});
app.get('/register.pug', (req,res) => {
  res.render('register', {error: {msg:''}});
});
app.get('/login.pug', (req,res) => {
  res.render('login');
});

app.post('/register', registerCheck, (req,res) => {
  const errors = validationResult(req);
	if (!errors.isEmpty()) {
    const message = errors.array()[0]['msg'];
    console.log(message);
    res.render('register', {error: {msg:message}})
	}else{
  const {firstname, lastname, email, username, password, password2} = req.body;
  
  const userExists =  'SELECT * FROM users WHERE username = ? OR email = ?';
  db.query(userExists, [username, email],  (err, results) => {
    if (err) {
      console.error('Error executing query:', err.message);
      return res.status(500).render('register', {error: {msg:''}, errorstatus:'Problem connecting to the database, please try to refresh the page'});
    }
    if (results.length > 0) {
      res.status(400).render('register', {error: {msg:''}, errorstatus:'Already existing user'});
    }
    bcrypt.hash(password, 10, (hashErr, passwordHash) => {
      if (hashErr) {
        console.error('Error hashing password:', hashErr.message);
        return res.status(500).send('Password hashing error');
      }
      const query = 'INSERT INTO users (first_name, last_name, email, username, password) VALUES (?, ?, ?, ?, ?)';
      db.query(query, [firstname, lastname, email, username, passwordHash], (err, results) => {
        if (err)  {
          console.error('Error executing query:', err.message);
          return res.render('register', {error: {msg:''},errorstatus:'Error connecting to the databaes, try refreshing the page'});
        }
        res.redirect('/login.pug');
        
      });
    });
    
  });
}
});

app.post('/login', (req, res) => {
    const {username, password} = req.body;
    const query = 'SELECT * FROM users WHERE BINARY username = ?';
    db.query(query, [username], async (err, results) => {
      if (err) {
        console.error('Error executing query:', err.message);
        return res.status(500).render('login', { errorstatus:'Problem connecting to the database, please try to refresh the page'});
        }

      if (results.length > 0) {
        console.log("logs : " , username, results);
        const user = results[0];
        try {
          const passwordMatch = await bcrypt.compare(password, user.password);
            if (passwordMatch) {
              req.session.user = { id: user.user_id, username: user.username, email: user.email, role: user.role };
              res.redirect('/movies.pug');
            } else {
                res.status(401).render('login', { errorstatus:'Invalid pair of creditentials'});
                }
            } catch (error) {
            console.error('Error comparing passwords:', error.message);
            res.status(500).render('login', { errorstatus:'We encountered a problem logging you in, please try to refresh the page'});
          }
        } else {
          res.status(401).render('login', { errorstatus:'Invalid pair of creditentials'});
          }
        });    
});

app.get('/logout', (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      console.error('Error destroying session:', err.message);
      res.status(500).send('Error logging out');
      } else {
        res.clearCookie('connect.sid');
        res.redirect('/');
        
        }
})
});

app.post('/addmovie',newMovieCheck, (req, res) => {
  const errors = validationResult(req);
	if (!errors.isEmpty()) {
    const message = errors.array()[0]['msg'];
    console.log(message);
    res.render('admin', {user:req.session.user, error: {msg:message}})
	}else{
    const checkquery = 'SELECT movie_name FROM movie_db WHERE movie_name = ?';
    db.query(checkquery, [req.body.movie_name], (err, results) => {
      if (err) {
        console.error('Error executing query:', err.message);
        return res.status(500).render('admin', {user:req.session.user, errorstatus:'Error connecting to the database'});
      }else if (results) {
        console.log(results);
        res.render('admin', {user:req.session.user, error: {msg:'Movie already exists'}})
      }else {       
        const {title,year, runtime, genre, description, director, image} = req.body;
        const query = 'INSERT INTO movie_db (movie_name, year, runtime, genre, description, director, image) VALUES (?, ?, ?, ?, ?, ?, ?)';
        db.query(query, [title,year, runtime + ' min', genre, description, director, image], (err, results) => {
          if (err) {
            console.error('Error executing query:', err.message);
            res.status(500).render('admin', {error: {msg:''}, user:req.session.user, errorstatus:'Please try again, attempt to add a movie has failed'});
          } else {
            res.redirect('/movies.pug');
          }
        });
      }
    });
  }
});


app.post('/delete-movie', delMovieCheck, (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    const message = errors.array()[0]['msg'];
    console.log(message);
    res.render('admin', {user:req.session.user, error: {msg:message}})
	}else{
    const {title} = req.body;
    console.log('this is res.body', title)
    const query = 'SELECT movie_name from movie_db WHERE movie_name = ?';
    db.query(query, [title], (err, results) => {
      if (err) {
        console.error('Error executing query:', err.message);
        res.status(500).render('admin', { user:req.session.user, errorstatus:'Problem accessing the database, try refreshing the page', error: {msg:''}});
      } else {
        if (results.length === 0) {
          res.status(404).render('admin', { user:req.session.user, errorstatus:'Movie not found, check for typos', error: {msg:''}});
        } else {
          const query = 'DELETE FROM movie_db WHERE movie_name = ?';
          db.query(query, [title], (err, results) => {
          if (err) {
            console.error('Error executing query:', err.message);
            res.status(500).render('admin', { user:req.session.user, errorstatus:'Movie could not be deleted, error connecting to the database', error: {msg:''}});
            } else {
              res.render('admin', { user:req.session.user, error: {msg:''} });
            }
          });
        }
      }
    });

  }

});
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});



// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});



module.exports = app;
