var actualMovieId = 7;
document.addEventListener('DOMContentLoaded', () => {
    const stars = document.querySelectorAll('#rating .star');

    stars.forEach((star, index) => {
      star.addEventListener('mouseover', () => {
        resetStars();
        highlightStars(index);
      });
  
      star.addEventListener('mouseleave', resetStars);
    });
      
  
    function highlightStars(index) {
      for (let i = 0; i <= index; i++) {
        stars[i].classList.add('hovered');
      }
    }
  
    function resetStars() {
      stars.forEach(star => star.classList.remove('hovered'));
    }
    
  });
  
  async function submitRating(rating,movie_id, user_id) {
    try {
      const response = await fetch('/submit-rating', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ rating,
            movie_id,
            user_id
         }),
      });
      console.log('Full response object:', response);
      if (response.ok) {
        console.log('Rating submitted successfully:');
      } else {
        console.error('Failed to submit rating:');
      }
    } catch (error) {
      console.error('Error submitting rating:', error);
    }
  }

function displayRating(star) {
  document.getElementById('confirmRating').innerHTML = `<p> You rated this movie ${star} stars !</p>`;
}


function showMovie(movie, element) {
    document.getElementById('movieId').innerHTML = movie.movie_id;
    document.getElementById('details').style.display = 'block';
    document.getElementById('blackscreen').style.display = "block";
    document.getElementById('currentMovieImage').src = movie.image;
    document.getElementById('currentMovieName').innerHTML = `${movie.movie_name}`;
    document.getElementById('currentMovieDir').innerHTML = `By : <b>${movie.director}, ${movie.year}</b>`;
    document.getElementById('currentMovieDescription').innerHTML = `${movie.description}`;
    document.getElementById('currentMovieGenre').innerHTML = `Genres : ${movie.genre}`;
    document.getElementById('confirmRating').innerHTML = '';
    document.getElementById('rate').style.display = "none";
    const movieId = element.getAttribute('data-movie-number');
    const stars = querySelectorAll('.star');
    stars.forEach((star) => {
      star.setAttribute('data-movie-id', movieId);
    });
    
}


function exitPopUp() {
    document.getElementById('details').style.display = 'none';
    document.getElementById('blackscreen').style.display = 'none';
    
}

async function sort(type) {
  try {
    if (type === 'all') {
      fetch('/allRatings', {
        method: 'GET',
        headers: { 'Content-Type': 'application/json' }
      });
    }
    if (type === 'best') {
      fetch('/bestRatings', {
        method: 'GET',
        headers: { 'Content-Type': 'application/json' }
      });
    }
    if (type === 'worst') {

    }
  }catch (err) {
    console.error(err);

  }
}

function confirmDelete(url) {
  const confirmed = window.confirm("Are you sure you want to delete this rating?");
  if (confirmed) {
    window.location.href = url; // Proceed with the delete request
  }
  return false; // Prevent the default navigation
}

function showDelete() {
  document.getElementById('delete').style.display = 'block';
  document.getElementById('add').style.display = 'none';
  document.getElementById('deleteMovieButton').style.color = '#350705';
  document.getElementById('addMovieButton').style.color = '#d2bd96';
  document.getElementById('deleteMovieButton').style.backgroundColor = '#d2bd96';
  document.getElementById('addMovieButton').style.backgroundColor = '#350705';
}

function showAdd() {
  document.getElementById('delete').style.display = 'none';
  document.getElementById('add').style.display = 'flex';
  document.getElementById('deleteMovieButton').style.backgroundColor = '#350705';
  document.getElementById('addMovieButton').style.backgroundColor = '#d2bd96';
  document.getElementById('deleteMovieButton').style.color = '#d2bd96';
  document.getElementById('addMovieButton').style.color = '#350705';
}

function displayNav() {
  document.getElementById('nav').style.display = 'block';
}

function hideNav() {
  document.getElementById('nav').style.display = 'none';

}

