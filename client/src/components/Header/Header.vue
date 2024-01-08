<template>
  <section class="hero-section" id="section_1">
    <header
      :class="{ animating: animating }"
      :style="{ backgroundImage: 'url(' + currentBackground + ')' }"
    >
      <nav>
        <h2>
          <b style="color: white"> l'université privée de Fes</b>
        </h2>
        <ul>
          <li><a href="#section_1">Home</a></li>
          <li><a href="#project">Vous êtes</a></li>
          <li><a href="#section_2">À propos</a></li>
          <li><a href="#footer">Contact</a></li>
        </ul>
      </nav>
      <div class="welcome-text">
        <h1>
          <b>
            Bienvenue sur la Plateforme <br />
            de Gestion des Stages pour <br />
            les Étudiants de l'université <br />
            privée de Fes
          </b>
        </h1>

        <div class="button-container">
          <button>Commencer</button>
          <button>En savoir plus</button>
        </div>
      </div>
    </header>
  </section>
  <section class="about-section section-padding" id="section_2">
    <div class="section-overlay"></div>
    <div class="container">
      <div class="row align-items-center">
        <h1 class="second">
          <b>l'université privée de Fes</b>
        </h1>
        <div class="col-lg-6 col-12">
          <div class="content">
            <div class="images">
              <img src="../../assets/image1.jpeg" alt="Group of graduates" />
              <img
                src="../../assets/image2.jpeg"
                alt="Graduates with UPF banner"
                class="first"
              />
            </div>
          </div>
        </div>

        <div class="col-lg-5 col-12 mt-4 mt-lg-0 mx-auto">
          <h2 class="text-black mb-3">A propos</h2>

          <p class="change">
            <b>
              Bienvenue sur la plateforme de gestion des stages de l'université
              privée de Fes . Cette plateforme a été conçue pour faciliter le
              processus d'inscription et de suivi des projets de fin d'études ou
              bien de fin d'année , offrant aux étudiants une opportunité de
              mettre en pratique leurs connaissances et compétences dans un
              projet concret et significatif.
            </b>
          </p>

          <a
            href="#barista-team"
            class="smoothscroll btn custom-btn custom-border-btn mt-3 mb-4"
            style="color: white; background-color: #044967"
            >Projets</a
          >
        </div>
      </div>
    </div>
  </section>
  <section class="barista-section section-padding section-bg" id="project">
    <div class="CC1">
      <div class="C1">
        <button @click="navigateToStudent">
          <img
            style="
              width: 100px;
              height: 100px;
              margin-left: 50px;
              margin-top: 50px;
            "
            src="../../assets/icon1.png"
            alt=""
          />
        </button>
        <p
          style="
            color: black;
            margin-top: 60px;
            margin-left: 35px;
            font-family: Lalezar;
          "
        >
          Espace Etudiant
        </p>
      </div>
      <div class="C2">
        <button @click="navigateToTeacher">
          <img
            style="
              width: 100px;
              height: 100px;
              margin-left: 50px;
              margin-top: 50px;
            "
            src="../../assets/icon2.png"
            alt=""
          />
        </button>
        <p
          style="
            color: black;
            margin-top: 60px;
            margin-left: 25px;
            font-family: Lalezar;
          "
        >
          Espace Enseignant
        </p>
      </div>

      <div class="C3">
        <button @click="navigateToAdmin">
          <img
            style="
              width: 100px;
              height: 100px;
              margin-left: 50px;
              margin-top: 50px;
            "
            src="../../assets/icon3.png"
            alt=""
          />
        </button>
        <p
          style="
            color: black;
            margin-top: 60px;
            margin-left: 45px;
            font-family: Lalezar;
          "
        >
          Espace Admin
        </p>
      </div>
    </div>
  </section>
  <section class="reviews-section section-padding section-bgg" id="section_4">
    <div class="testimonials-container">
      <div class="testimonial">
        <img src="../../assets/image1.jpeg" alt="Elyadouni Salma's photo" />
        <h3>Elyadouni Salma/UI designer</h3>
        <p>
          Mon projet de recherche a bénéficié d'un soutien inestimable grâce à
          cette plateforme... Mon projet de recherche a bénéficié d'un soutien
          inestimable grâce à cette plateforme... Mon projet de recherche a
          bénéficié d'un soutien inestimable grâce à cette plateforme... Mon
          projet de recherche a bénéficié d'un soutien inestimable grâce à cette
          plateforme...
        </p>
      </div>
      <div class="testimonial">
        <img
          src="../../assets/software-engineer 1 (1).png"
          alt="Rhrich Ibtissam's photo"
        />
        <h3>Rhrich Ibtissam/Marketing digital</h3>
        <p>
          Inscrire mon projet de fin d'études sur cette plateforme a ouvert des
          portes incroyables...
        </p>
      </div>
      <div class="testimonial">
        <img src="../../assets/student 1.png" alt="Ettafqi Ashraf's photo" />
        <h3>Ettafqi Ashraf/Software Engineer</h3>
        <p>
          Participer à un projet de fin d'études via cette plateforme a été une
          expérience transformative...
        </p>
      </div>
    </div>
  </section>
  <footer id="footer" class="footer">
    <div class="footer-row">
      <div class="footer-col">
        <h4>Info</h4>
        <ul class="links">
          <li><a href="#">home</a></li>
          <li><a href="#">Vous êtes</a></li>
          <li><a href="#">A propos</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Users</h4>
        <ul class="links">
          <li><a href="#">Student</a></li>
          <li><a href="#">Teacher</a></li>
          <li><a href="#">Admin</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Stages</h4>
        <ul class="links">
          <li><a href="#">Stage D'observation</a></li>
          <li><a href="#">Stage PFA</a></li>
          <li><a href="#">Stage PFE</a></li>
          <li><a href="#">Security</a></li>
          <li><a href="#">Testimonials</a></li>
          <li><a href="#">Media Kit</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <img src="../../assets/logo.jpeg" alt="" />
        <br />
        <br />
        <br />
        <form action="#">
          <input type="text" placeholder="Your email" required />
          <button style="color: black" type="submit">SUBSCRIBE</button>
        </form>
        <div class="icons">
          <i class="fa-brands fa-facebook-f"></i>
          <i class="fa-brands fa-twitter"></i>
          <i class="fa-brands fa-linkedin"></i>
          <i class="fa-brands fa-github"></i>
        </div>
      </div>
    </div>
  </footer>
</template>
<script>
export default {
  name: "Header",
  data() {
    return {
      isMobileMenuOpen: false,
      animating: false,
      backgrounds: [
        "../../images/image1.jpeg",
        "../../images/image2.jpeg",
        "../../images/image3.jpeg",
        "../../images/image4.jpeg",
      ],
      currentBackgroundIndex: 0,
      backgroundPosition: "100% top", // Initial background position (right edge)
    };
  },
  computed: {
    currentBackground() {
      return this.backgrounds[this.currentBackgroundIndex];
    },
  },
  created() {
    // Start changing the background image every 3 seconds
    this.intervalId = setInterval(this.changeBackground, 5000); // Increase the interval for a slower animation
  },
  beforeDestroy() {
    // Clear the interval when the component is destroyed to prevent memory leaks
    clearInterval(this.intervalId);
  },
  methods: {
    navigateToAdmin() {
      this.$router.push("/admin");
    },
    navigateToStudent() {
      this.$router.push("/student");
    },
    navigateToTeacher() {
      this.$router.push("/teacher");
    },
    changeBackground() {
      // Increment the background index and loop back to the first image if necessary
      this.currentBackgroundIndex =
        (this.currentBackgroundIndex + 1) % this.backgrounds.length;

      // Update background position for sweeping effect

      // After a delay, reset the background position
      setTimeout(() => {
        this.animating = false;
      }, 1000); // Adjust the delay to match the transition duration
    },
  },
};
</script>
<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&family=Roboto+Mono:wght@100;200&family=Roboto:ital,wght@0,100;0,500;1,500&family=Yanone+Kaffeesatz:wght@700&display=swap");

@import url("https://fonts.googleapis.com/css2?family=Lalezar&family=Poppins:wght@300;400;500;600&family=Roboto+Mono:wght@100;200&family=Roboto:ital,wght@0,100;0,500;1,500&family=Yanone+Kaffeesatz:wght@700&display=swap");
.testimonials-container {
  display: flex;
  justify-content: space-around;
  padding: 20px;
}

.testimonial {
  width: 30%;
  background-color: #044967;
  padding: 20px;
  border-radius: 10px; /* Rounded corners */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Example shadow */
  text-align: center;
}
.footer {
  background-color: #044967; /* Adjust the color to match the footer */
  color: white;
  padding: 20px;
  text-align: center;
  font-family: Arial, sans-serif;
}

.footer {
  position: absolute;
  top: 490%;
  left: 50%;
  transform: translate(-50%, -50%);
  max-width: 1280px;
  width: 100%;
  background: #044967;
  border-radius: 6px;
}
.footer .footer-row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 3.5rem;
  padding: 60px;
}
.footer-row .footer-col h4 {
  color: #fff;
  font-size: 1.2rem;
  font-weight: 400;
}
.footer-col .links {
  margin-top: 20px;
}
.footer-col .links li {
  list-style: none;
  margin-bottom: 10px;
}
.footer-col .links li a {
  text-decoration: none;
  color: #bfbfbf;
}
.footer-col .links li a:hover {
  color: #fff;
}
.footer-col p {
  margin: 20px 0;
  color: #bfbfbf;
  max-width: 300px;
}
.footer-col form {
  display: flex;
  gap: 5px;
}
.footer-col input {
  height: 40px;
  border-radius: 6px;
  background: none;
  width: 100%;
  outline: none;
  border: 1px solid #7489c6;
  caret-color: #fff;
  color: #fff;
  padding-left: 10px;
}
.footer-col input::placeholder {
  color: #ccc;
}
.footer-col form button {
  background: #fff;
  outline: none;
  border: none;
  padding: 10px 15px;
  border-radius: 6px;
  cursor: pointer;
  font-weight: 500;
  transition: 0.2s ease;
}
.footer-col form button:hover {
  background: #cecccc;
}
.footer-col .icons {
  display: flex;
  margin-top: 30px;
  gap: 30px;
  cursor: pointer;
}
.footer-col .icons i {
  color: #afb6c7;
}
.footer-col .icons i:hover {
  color: #fff;
}
@media (max-width: 768px) {
  .footer {
    position: relative;
    bottom: 0;
    left: 0;
    transform: none;
    width: 100%;
    border-radius: 0;
  }
  .footer .footer-row {
    padding: 20px;
    gap: 1rem;
  }
  .footer-col form {
    display: block;
  }
  .footer-col form :where(input, button) {
    width: 100%;
  }
  .footer-col form button {
    margin: 10px 0 0 0;
  }
}
.testimonial img {
  width: 100px;
  height: 100px;
  border-radius: 50%; /* Circular images */
  margin-bottom: 20px;
}

.testimonial h3 {
  color: white; /* Example text color */
  margin-bottom: 10px;
}

.testimonial p {
  color: white; /* Example text color */
  font-size: 14px;
  line-height: 1.6;
}

header {
  background-image: url("../../images/Background.png");
  background-size: cover;
  background-position: top;
  color: #ffffff;
  height: 120vh;
  display: flex;
  flex-direction: column;
  justify-content: flex-end; /* Aligner le contenu en bas */
  padding-bottom: 130px;
  transition: background-position 2s ease-in-out; /* Adjust the duration as needed */
}
.CC1 {
  height: 250px;
  gap: 40px;
}
.C1 {
  width: 200px;
  height: 290px;
  background-color: white;
  margin-left: 150px;
  border-radius: 10px;
  margin-top: -50px;
}
.C2 {
  width: 200px;
  height: 290px;
  background-color: white;
  margin-left: 530px;
  border-radius: 10px;
  margin-top: -290px;
}
.C3 {
  width: 200px;
  height: 290px;
  background-color: white;
  margin-left: 900px;
  border-radius: 10px;
  margin-top: -290px;
}
.change {
  color: #8aa0ee;
  font-family: Lalezar;
  font-size: 26px;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
}
.second {
  font-family: Lalezar;
  text-align: center;
  font-weight: bold;
  font-size: 2em;
  color: #000;
  margin-top: -20px;
}
.card-container {
  display: flex;
  justify-content: center;
  gap: 20px;
  padding: 90px;
  height: 200px;
}

.card {
  background-color: #ffffff;
  border-radius: 5px;
  padding: 40px;
  text-align: center;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* Optional: adds shadow for depth */
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  flex: 1; /* Makes the cards flexible */
  width: 10px;
  height: 400px;
}

.card img {
  max-width: 100px; /* Maximum width, keeps image from stretching */
  max-height: 100px; /* Maximum height, keeps image from stretching */
}

.card p {
  font-size: 16px; /* Adjust as needed */
  margin-top: 10px; /* Adjust as needed */
  width: 100%; /* Ensures text aligns with the width of the card */
}

.first {
  margin-left: 100px;
  margin-top: -100px;
}
/* Additional styles for animating the background */
header.animating {
  opacity: 0.5; /* Example effect, adjust as needed */
}
/* If you want to move the entire right column to the left */
.col-lg-5 {
  padding-right: 0; /* Adjust the padding or margin as necessary */
}

/* Specifically targeting the heading if needed */
.col-lg-5 h2 {
  margin-left: -20px; /* Adjust this value to move it more or less */
}

/* If you want to move the paragraph text to the left as well */
.col-lg-5 .text-black {
  margin-left: -5px; /* Adjust this value to move it more or less */
  font-family: Lalezar;
  font-size: 29px;
  margin-top: 100px;
}

h2 {
  margin-left: 130px;
  margin-top: 10px;
  font-size: 20px;
}
.content {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-top: 100px;
}
nav {
  position: absolute;
  top: 25px;
  width: 100%;
  padding: 20px;
  box-sizing: border-box;
  display: flex;
  justify-content: space-between; /* This aligns the logo and ul at opposite ends */
  align-items: center;
  margin-left: -100px;
}
.fade-in {
  opacity: 0;
  animation: fadeIn 0.5s ease-in-out forwards;
}
.images {
  flex-basis: 60%;
  margin-left: 100px;
}

.images img {
  width: 100%;
  display: block;
  margin-bottom: 10px;
}
@keyframes fadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
nav ul {
  list-style: none;
  display: flex;
  justify-content: flex-start; /* Align items to the left */
  margin-left: 0; /* Adjust or remove if necessary */
}

nav ul li {
  margin-left: 40px; /* Adjust as needed for spacing between list items */
}

nav ul li a {
  color: white;
  text-decoration: none;
  font-weight: bold;
  margin-left: 0; /* Adjust or remove if necessary */
}

li a:hover {
  color: #003d82;
}

.logo {
  width: 100px; /* Adjust as per your logo's dimensions */
}

.welcome-text {
  display: flex;
  flex-direction: column;
  align-items: flex-start; /* Align items to the start (left) */
}

.welcome-text h1 {
  font-size: 3em;
  margin-top: 160px;
  word-wrap: break-word;
  text-align: left;
  width: 100%;
  max-width: 1200px;
  padding-left: 90px;
  order: 1; /* Order 2 will place it after the buttons */
  font-family: Yanone Kaffeesatz;
  word-spacing: 10px; /* Increase or decrease as needed */
  line-height: 1.2; /* Ajustez cette valeur selon vos besoins */
}

.button-container {
  display: flex; /* Flex container for the buttons */
  align-items: center; /* Align buttons vertically */
  order: 2; /* Below the H1 */
  margin-top: 20px;
}

.button-container button {
  padding: 10px 20px;
  margin: 10px;
  border: none;
  background-color: #0056b3;
  color: white;
  font-size: 1em;
  cursor: pointer;
  margin-left: 90px;
}

.button-container button:hover {
  background-color: #003d82;
}
/* Extra small devices (phones, 600px and down) */
@media only screen and (max-width: 600px) {
  header {
    padding-bottom: 20px;
  }

  nav {
    margin-left: 0;
  }

  nav ul {
    flex-direction: column;
    padding: 0;
  }

  nav ul li {
    margin-left: 0;
    margin-top: 10px;
  }

  .welcome-text h1 {
    font-size: 2em;
    margin-top: 120px;
    padding-left: 20px;
  }

  .button-container {
    flex-direction: column;
    align-items: center;
    margin-left: 0;
  }

  .button-container button {
    margin: 5px 0;
  }
}

/* Small devices (portrait tablets and large phones, 600px to 768px) */
@media only screen and (min-width: 600px) and (max-width: 768px) {
  .welcome-text h1 {
    font-size: 2.5em;
  }

  nav ul li {
    margin-left: 20px;
  }
}

/* Medium devices (landscape tablets, 768px to 992px) */
@media only screen and (min-width: 768px) and (max-width: 992px) {
  .welcome-text h1 {
    font-size: 3em;
  }

  nav ul li {
    margin-left: 30px;
  }
}

/* Large devices (laptops/desktops, 992px to 1200px) */
@media only screen and (min-width: 992px) and (max-width: 1200px) {
  .welcome-text h1 {
    font-size: 3.5em;
  }

  nav ul li {
    margin-left: 40px;
  }
}

/* Extra large devices (large laptops and desktops, 1200px and up) */
@media only screen and (min-width: 1200px) {
  .welcome-text h1 {
    font-size: 4em;
  }
}
</style>
