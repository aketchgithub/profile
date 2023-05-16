(function () {
    [...document.querySelectorAll(".control")].forEach(button => {
        button.addEventListener("click", function() {
            document.querySelector(".active-btn").classList.remove("active-btn");
            this.classList.add("active-btn");
            document.querySelector(".active").classList.remove("active");
            document.getElementById(button.dataset.id).classList.add("active");
        })
    });
    document.querySelector(".theme-btn").addEventListener("click", () => {
        document.body.classList.toggle("light-mode");
    });
    document.querySelector('.contact-form').addEventListener('submit', function(e){
        e.preventDefault();

        const formData = new FormData(this);

        fetch('https://profile-api-tolx.onrender.com/contact', {
           method: 'POST',
           body: formData
        })
        .then(response => {
            if (response.ok) {
                console.log('Form submitted successfully');
            }
            else{
                console.error('Form submission failed');
            }
        })
        .catch(error => {
            console.error('An error occurred during form submission:' ,error);
        })
            
    });

})
();
