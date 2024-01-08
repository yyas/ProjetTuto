<template>
  <!DOCTYPE html>

  <html lang="en" dir="ltr">
    <head>
      <meta charset="UTF-8" />
      <title>Espace Etudiant</title>
      <link rel="stylesheet" href="style.css" />

      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>
    <header>
      <div class="container">
        <div class="front-f">
          <img src="../../assets/logo.jpeg" alt="" />
        </div>

        <div class="cover">
          <div class="front">
            <img src="../../assets/student 1.png" alt="" />
          </div>
        </div>
        <br /><br /><br />
        <div class="forms">
          <div class="form-content">
            <div class="login-form">
              <div class="title">Espace Etudiant</div>
              <form @submit.prevent="login">
                <div class="input-boxes">
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input
                      type="email"
                      placeholder="Enter your email"
                      v-model="email"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input
                      type="password"
                      placeholder="Enter your password"
                      v-model="password"
                      required
                    />
                  </div>
                  <div class="button input-box">
                    <input type="submit" value="Submit" />
                  </div>
                  <p v-if="errorMessage">{{ errorMessage }}</p>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </header>
  </html>
</template>

<script>
import axios from "axios";
import { toast } from "vue3-toastify";
import "vue3-toastify/dist/index.css";
export default {
  data() {
    return {
      email: "",
      password: "",
      errorMessage: toast.error("Email ou Mot de Passe Incorrect", {
        autoClose: 3000,
      }),
    };
  },
  methods: {
    async login() {
      try {
        const response = await axios.post("http://localhost:3000/api/login", {
          email: this.email,
          password: this.password,
        });

        if (response.data.role === "student") {
          this.$router.push("/stage");
        } else {
          this.errorMessage = "Access denied for non-teacher roles";
        }
      } catch (error) {
        if (error.response) {
          // The request was made and the server responded with a status code
          // that falls out of the range of 2xx
          this.errorMessage = error.response.data;
        } else if (error.request) {
          // The request was made but no response was received
          this.errorMessage = "No response from the server";
        } else {
          // Something happened in setting up the request that triggered an Error
          this.errorMessage = error.message;
        }
      }
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
.front-f {
  position: absolute;
  top: 20px;
  left: 20px;
  margin-bottom: 40px;
  text-align: left;
  margin-top: 20px;
}

.front-f img {
  width: 150px;
  height: auto;
  display: block;
  margin: 10 auto;
}
header {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #5291f0b2;
  padding: 30px;
}
.container {
  position: relative;
  max-width: 850px;
  width: 100%;
  background: #fff;
  padding: 40px 30px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  perspective: 2700px;
}
.container .cover {
  position: absolute;
  top: 0;
  left: 50%;
  height: 100%;
  width: 50%;
  z-index: 98;
  transition: all 1s ease;
  transform-origin: left;
  transform-style: preserve-3d;
}
.container #flip:checked ~ .cover {
  transform: rotateY(-180deg);
}
.container .cover .front,
.container .cover .back {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
}

.container .cover::after {
  opacity: 0.3;
  transform: rotateY(180deg);
  backface-visibility: hidden;
}
.container .cover img {
  position: absolute;
  height: 100%;
  width: 100%;
  object-fit: cover;
  z-index: 10;
}
.container .cover .text {
  position: absolute;
  z-index: 130;
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.cover .text .text-1,
.cover .text .text-2 {
  font-size: 26px;
  font-weight: 600;
  color: #fff;
  text-align: center;
}
.cover .text .text-2 {
  font-size: 15px;
  font-weight: 500;
}
.container .forms {
  height: 100%;
  width: 100%;
  background: #fff;
}
.container .form-content {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.form-content .login-form {
  width: calc(100% / 2 - 25px);
}
.forms .form-content .title {
  position: relative;
  font-size: 24px;
  font-weight: 500;
  color: #333;
}
.forms .form-content .title:before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 25px;
  background: #5291f0b2;
}

.forms .form-content .input-boxes {
  margin-top: 30px;
}
.forms .form-content .input-box {
  display: flex;
  align-items: center;
  height: 50px;
  width: 100%;
  margin: 10px 0;
  position: relative;
}
.form-content .input-box input {
  height: 100%;
  width: 100%;
  outline: none;
  border: none;
  padding: 0 30px;
  font-size: 16px;
  font-weight: 500;
  border-bottom: 2px solid rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease;
}
.form-content .input-box input:focus,
.form-content .input-box input:valid {
  border-color: #5291f0b2;
}
.form-content .input-box i {
  position: absolute;
  color: #000;
  font-size: 17px;
}
.forms .form-content .text {
  font-size: 14px;
  font-weight: 500;
  color: #333;
}
.forms .form-content .text a {
  text-decoration: none;
}
.forms .form-content .text a:hover {
  text-decoration: underline;
}
.forms .form-content .button {
  color: #fff;
  margin-top: 40px;
}
.forms .form-content .button input {
  color: #fff;
  background: #2113c4;
  border-radius: 6px;
  padding: 0;
  cursor: pointer;
  transition: all 0.4s ease;
}
.forms .form-content .button input:hover {
  background: #5291f0b2;
}
.forms .form-content label {
  color: #5291f0b2;
  cursor: pointer;
}
.forms .form-content label:hover {
  text-decoration: underline;
}
.forms .form-content .login-text {
  text-align: center;
  margin-top: 25px;
}
.container #flip {
  display: none;
}
@media (max-width: 730px) {
  .container .cover {
    display: none;
  }
  .form-content .login-form {
    width: 100%;
  }

  .container #flip:checked ~ .forms .login-form {
    display: none;
  }
}
</style>
