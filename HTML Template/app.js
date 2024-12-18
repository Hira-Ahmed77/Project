$(window).scroll(function(){
    $('nav').toggleClass('scrolled', $(this).scrollTop()>650);
});

var login = document.getElementById("upperLogin");

function openLogin(){
    login.style.display="block";
}
function closeLogin(){
    login.style.display="none";
}


window.onclick = function(event) {
    if (event.target == login) {
        login.style.display = "none";
    }
}

const signUpButton = document.getElementById('signUp');
	const signInButton = document.getElementById('signIn');
	const container = document.getElementById('container');

	signUpButton.addEventListener('click', () => {
		container.classList.add("right-panel-active");
	});
	signInButton.addEventListener('click', () => {
		container.classList.remove("right-panel-active");
	});

$(document).ready(function(){

    $(".Food-Carousel .owl-carousel").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        responsive : {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000 : {
                items: 5
            }
        }
    });
});


document.getElementById('searchInput').addEventListener('keyup', function() {
    let filter = this.value.toUpperCase();
    let items = document.querySelectorAll('.menu__item'); // Assuming menu items are in .menu__item class

    items.forEach(item => {
        let text = item.textContent || item.innerText;
        if (text.toUpperCase().indexOf(filter) > -1) {
            item.style.display = '';
        } else {
            item.style.display = 'none';
        }
    });
});

function offsetAnchor() {
    if (location.hash.length !== 0) {
      window.scrollTo(window.scrollX, window.scrollY - 100);
    }
  }

  $(document).on('click', 'a[href^="#"]', function(event) {
    window.setTimeout(function() {
      offsetAnchor();
    }, 0);
  });
  window.setTimeout(offsetAnchor, 0);
