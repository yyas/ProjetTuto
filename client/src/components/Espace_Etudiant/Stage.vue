<!-- App.vue -->
<template>
  <header>
    <div class="container">
      <img
        src="../../assets/logo.jpeg"
        alt="Avatar"
        class="avatar"
        width="100"
      />
      <div class="welcome-message">
        <h1>Bienvenue sur notre plateforme, Student !</h1>
      </div>
      <p>Veuillez choisir le type de votre stage:</p>
      <button @click="handleSubmitObservation" class="button">
        Stage d'observation
      </button>
      <button @click="handleSubmitPFA" class="button">Stage Technique</button>
      <button @click="handleSubmitPFE" class="button">
        Stage de fin de formation
      </button>
    </div>
  </header>
</template>

<script>
export default {
  name: "Stage",
  methods: {
    handleSubmitObservation() {
      // Logic before navigation (e.g., form validation) goes here

      // Navigate to /student
      this.$router.push("/stage/Observation");
    },
    handleSubmitPFA() {
      // Logic before navigation (e.g., form validation) goes here

      // Navigate to /student
      this.$router.push("/stage/PFA");
    },
    handleSubmitPFE() {
      // Logic before navigation (e.g., form validation) goes here

      // Navigate to /student
      this.$router.push("/stage/PFE");
    },
  },
};
</script>

<style scoped>
header {
  font-family: Arial, sans-serif;
}
.container {
  width: 80%;
  margin: 0 auto;
  padding: 20px;
  text-align: center;
}
.welcome-message {
  background-color: #b0d4f1;
  padding: 20px;
  border-radius: 10px;
  margin-bottom: 20px;
}
.button {
  padding: 10px 20px;
  margin: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  background-color: #e0e0e0;
  display: block;
  width: 50%;
  margin-left: auto;
  margin-right: auto;
}
.button:hover {
  background-color: #d0d0d0;
}
.avatar {
  border-radius: 50%;
  margin-bottom: 20px;
}
</style>
