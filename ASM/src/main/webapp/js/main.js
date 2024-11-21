
       window.addEventListener('scroll', function() {
           if (window.scrollY > 50) {
               document.querySelector('.navbar-backflix').classList.add('scrolled');
           } else {
               document.querySelector('.navbar-backflix').classList.remove('scrolled');
           }
       });
	   
	   
// js của detail
function toggleLike(button) {
    const heartIcon = button.querySelector('i');
    
    if (heartIcon.classList.contains('far')) {
        heartIcon.classList.remove('far');
        heartIcon.classList.add('fas');
        button.classList.add('active');
    } else {
        heartIcon.classList.remove('fas');
        heartIcon.classList.add('far');
        button.classList.remove('active');
    }
}



// xử lý nút back và next

