function enrollNow() {
    alert(
        "Welcome to Unida Christian Colleges!\n\n" +
        "The enrollment page will open soon."
    );
}


function googleLogin() {
    alert(
        "Google Sign-In button clicked.\n\n" +
        "To make this work, you need to connect Google OAuth."
    );
}


/* Navigation active effect */

const links = document.querySelectorAll("nav a");

links.forEach(function(link) {

    link.addEventListener("click", function() {

        links.forEach(function(item) {
            item.classList.remove("active");
        });

        this.classList.add("active");

    });

});
